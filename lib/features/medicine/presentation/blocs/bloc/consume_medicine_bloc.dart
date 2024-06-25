import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medi_mind/features/medicine/domain/i_medicine_repository.dart';
import 'package:medi_mind/features/medicine/domain/medicine.dart';
import 'package:medi_mind/features/medicine/domain/medicine_failure.dart';

part 'consume_medicine_event.dart';
part 'consume_medicine_state.dart';
part 'consume_medicine_bloc.freezed.dart';

@injectable
class ConsumeMedicineBloc
    extends Bloc<ConsumeMedicineEvent, ConsumeMedicineState> {
  ConsumeMedicineBloc(this._repository)
      : super(const ConsumeMedicineState.initial()) {
    on<ConsumeMedicineEvent>(
      (event, emit) async {
        await event.map(
          consume: (event) async {
            final failureOrMedicines =
                await _repository.consumeMedicine(medicineId: event.medicineId);

            emit(
              failureOrMedicines.fold(
                (failure) => ConsumeMedicineState.loadFailure(failure),
                (medicine) => ConsumeMedicineState.loadSuccess(medicine),
              ),
            );
          },
        );
      },
    );
  }

  final IMedicineRepository _repository;
}
