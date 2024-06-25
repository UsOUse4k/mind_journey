import 'package:dartz/dartz.dart';
import 'package:medi_mind/features/common/domain/value_objects.dart';
import 'package:medi_mind/features/medicine/domain/medicine.dart';
import 'package:medi_mind/features/medicine/domain/medicine_failure.dart';

abstract class IMedicineRepository {
  Future<Either<MedicineFailure, Medicine>> createMedicine({
    required NotEmptyString name,
    required MedicineReleaseForm releaseForm,
    required DateTime time,
    required int dose,
  });

  Future<Either<MedicineFailure, List<Medicine>>> getMedicines();

  Future<Either<MedicineFailure, Medicine>> consumeMedicine({
    required String medicineId,
  });

  Future<Either<MedicineFailure, Medicine>> deleteMedicine({
    required String id,
  });
}
