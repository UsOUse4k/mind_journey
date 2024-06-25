part of 'consume_medicine_bloc.dart';

@freezed
class ConsumeMedicineEvent with _$ConsumeMedicineEvent {
  const factory ConsumeMedicineEvent.consume(String medicineId) = _Consume;
}
