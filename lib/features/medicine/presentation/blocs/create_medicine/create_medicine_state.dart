part of 'create_medicine_bloc.dart';

@freezed
class CreateMedicineState with _$CreateMedicineState {
  const factory CreateMedicineState({
    required NotEmptyString name,
    required MedicineReleaseForm? releaseForm,
    required DateTime? time,
    required int? dose,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<MedicineFailure, Medicine>>
        medicineFailureOrMedicineOption,
  }) = _CreateMedicineState;

  factory CreateMedicineState.initial() => CreateMedicineState(
        name: NotEmptyString(""),
        releaseForm: null,
        time: null,
        dose: null,
        showErrorMessages: false,
        isSubmitting: false,
        medicineFailureOrMedicineOption: none(),
      );
}
