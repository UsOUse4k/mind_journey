part of 'consume_medicine_bloc.dart';

@freezed
class ConsumeMedicineState with _$ConsumeMedicineState {
  const factory ConsumeMedicineState.initial() = _Initial;
  const factory ConsumeMedicineState.loadInProgress() = _LoadInProgress;
  const factory ConsumeMedicineState.loadSuccess(Medicine medicine) =
      _LoadSuccess;
  const factory ConsumeMedicineState.loadFailure(MedicineFailure medicineFailure) =
      _LoadFailure;
}
