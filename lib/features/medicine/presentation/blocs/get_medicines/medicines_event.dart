part of 'medicines_bloc.dart';

@freezed
class MedicinesEvent with _$MedicinesEvent {
  const factory MedicinesEvent.getMedicines() = _GetMedicines;
  const factory MedicinesEvent.addNewMedicine(Medicine medicine) =
      _AddNewMedicine;
  const factory MedicinesEvent.updateMedicine(Medicine medicine) =
      _UpdateMedicineId;
}
