import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_mind/features/auth/domain/auth_value_objects.dart';
import 'package:medi_mind/features/common/domain/value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String id,
    required String userId,
    required Email email,
    required NotEmptyString name,
    required NotEmptyString surname,
  }) = _User;

  factory User.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data()! as Map<String, dynamic>;

    return User(
      id: doc.id,
      userId: data["userId"] as String,
      email: Email(data["email"] as String),
      name: NotEmptyString(data["name"] as String),
      surname: NotEmptyString(data["surname"] as String),
    );
  }
}
