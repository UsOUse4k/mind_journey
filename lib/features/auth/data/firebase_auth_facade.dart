import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:medi_mind/core/constants/hive_box_names.dart';
import 'package:medi_mind/features/auth/data/user_entity.dart';
import 'package:medi_mind/features/auth/domain/auth_failure.dart';
import 'package:medi_mind/features/auth/domain/auth_value_objects.dart';
import 'package:medi_mind/features/auth/domain/i_auth_facade.dart';
import 'package:medi_mind/features/auth/domain/user.dart';
import 'package:medi_mind/features/common/data/user_document_reference.dart';
import 'package:medi_mind/features/common/domain/value_objects.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade extends IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  final BehaviorSubject<Option<User>> _userSubject = BehaviorSubject();

  FirebaseAuthFacade(this._firebaseAuth, this._firestore);

  @override
  Stream<Option<User>> getUser() async* {
    if (!_userSubject.hasValue) {
      final userBox = Hive.box(BoxNames.current);
      final user = (userBox.get(BoxKeys.user) as UserEntity?)?.toDomain();
      _userSubject.add(user != null ? some(user) : none());
    }

    yield* _userSubject.stream;
  }

  @override
  Future<Either<AuthFailure, Unit>> login({
    required Email email,
    required Password password,
  }) async {
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );

      final userId = credential.user!.uid;
      final docRef = await getUserDocRef(userId);
      final docSnapshot = await docRef.get();

      final user = User.fromFirestore(docSnapshot);

      await _cacheUser(user);
      _userSubject.add(some(user));

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-credential") {
        return left(const AuthFailure.invalidCredentials());
      }
      return left(const AuthFailure.serverError());
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> register({
    required NotEmptyString name,
    required NotEmptyString surname,
    required Email email,
    required Password password,
  }) async {
    final nameStr = name.getOrCrash();
    final surnameStr = surname.getOrCrash();
    final emailStr = email.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );

      final userId = credential.user!.uid;

      final docRef = await _firestore.collection("users").add({
        "userId": userId,
        "email": emailStr,
        "name": nameStr,
        "surname": surnameStr,
      });

      final docSnapshot = await docRef.get();

      final user = User.fromFirestore(docSnapshot);

      await _cacheUser(user);
      _userSubject.add(some(user));

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUse());
      }
      return left(const AuthFailure.serverError());
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> logout() async {
    await Hive.box(BoxNames.current).delete(BoxKeys.user);
    _userSubject.add(none());
    await _firebaseAuth.signOut();
  }

  Future<void> _cacheUser(User user) async {
    final userBox = Hive.box(BoxNames.current);
    await userBox.put(BoxKeys.user, UserEntity.fromDomain(user));
  }
}
