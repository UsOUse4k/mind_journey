part of 'create_medicine_bloc.dart';

@freezed
class CreateMedicineEvent with _$CreateMedicineEvent {
  const factory CreateMedicineEvent.nameChanged(String name) = _NameChanged;
  const factory CreateMedicineEvent.releaseFormChanged(
    MedicineReleaseForm releaseForm,
  ) = _ReleaseFormChanged;
  const factory CreateMedicineEvent.timeChanged(DateTime time) = _TimeChanged;
  const factory CreateMedicineEvent.doseChanged(int dose) = _DoseChanged;
  const factory CreateMedicineEvent.createMedicinePressed() =
      _CreateMedicinePressed;
}
