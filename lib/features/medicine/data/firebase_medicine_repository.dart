import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:medi_mind/features/common/data/user_document_reference.dart';
import 'package:medi_mind/features/common/domain/value_objects.dart';
import 'package:medi_mind/features/medicine/domain/i_medicine_repository.dart';
import 'package:medi_mind/features/medicine/domain/medicine.dart';
import 'package:medi_mind/features/medicine/domain/medicine_failure.dart';

@LazySingleton(as: IMedicineRepository)
class FirebaseMedicineRepository implements IMedicineRepository {
  final FirebaseAuth _firebaseAuth;

  FirebaseMedicineRepository(this._firebaseAuth);

  @override
  Future<Either<MedicineFailure, Medicine>> createMedicine({
    required NotEmptyString name,
    required MedicineReleaseForm releaseForm,
    required DateTime time,
    required int dose,
  }) async {
    final nameStr = name.getOrCrash();

    return _handleCurrentUser(
      (userDocRef) async {
        final medicineDocRef = await userDocRef.collection("medicines").add({
          "name": nameStr,
          "release-form": releaseForm.name,
          "time": Timestamp.fromDate(time),
          "dose": dose,
          "consumed": false,
        });

        final doc = await medicineDocRef.get();
        return right(Medicine.fromFirestore(doc));
      },
    );
  }

  @override
  Future<Either<MedicineFailure, List<Medicine>>> getMedicines() async {
    return _handleCurrentUser(
      (userDocRef) async {
        final querySnapshot = await userDocRef.collection("medicines").get();
        final medicines = querySnapshot.docs
            .map((doc) => Medicine.fromFirestore(doc))
            .toList();
        return right(medicines);
      },
    );
  }

  @override
  Future<Either<MedicineFailure, Medicine>> consumeMedicine({
    required String medicineId,
  }) async {
    return _handleCurrentUser(
      (userDocRef) async {
        final medicineDocRef = userDocRef.collection("medicines").doc(medicineId);
        final medicineDoc = await medicineDocRef.get();

        if (!medicineDoc.exists) {
          return left(const MedicineFailure.notFound());
        }

        await medicineDocRef.update({"consumed": true});

        final updatedMedicineDoc = await medicineDocRef.get();

        return right(
          Medicine.fromFirestore(updatedMedicineDoc),
        );
      },
    );
  }

  @override
  Future<Either<MedicineFailure, Medicine>> deleteMedicine({
    required String id,
  }) async {
    return _handleCurrentUser(
      (userDocRef) async {
        final medicineDocRef = userDocRef.collection("medicines").doc(id);
        final medicineDoc = await medicineDocRef.get();
        if (!medicineDoc.exists) {
          return left(const MedicineFailure.notFound());
        }
        await medicineDocRef.delete();
        return right(Medicine.fromFirestore(medicineDoc));
      },
    );
  }

  Future<Either<MedicineFailure, T>> _handleCurrentUser<T>(
    Future<Either<MedicineFailure, T>> Function(DocumentReference) action,
  ) async {
    final user = _firebaseAuth.currentUser;
    if (user == null) {
      return left(const MedicineFailure.userNotLoggedIn());
    }

    final userDocRef = await getUserDocRef(user.uid);
    return action(userDocRef);
  }
}
