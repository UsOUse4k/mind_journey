import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medi_mind/features/medicine/domain/i_medicine_repository.dart';
import 'package:medi_mind/features/medicine/domain/medicine.dart';
import 'package:medi_mind/features/medicine/domain/medicine_failure.dart';

part 'medicines_event.dart';
part 'medicines_state.dart';
part 'medicines_bloc.freezed.dart';

@injectable
class MedicinesBloc extends Bloc<MedicinesEvent, MedicinesState> {
  MedicinesBloc(this._repository) : super(const MedicinesState.initial()) {
    on<MedicinesEvent>(
      (event, emit) async {
        await event.map(
          getMedicines: (event) async {
            emit(const MedicinesState.loadInProgress());
            final failureOrMedicines = await _repository.getMedicines();
            emit(
              failureOrMedicines.fold(
                (failure) => MedicinesState.loadFailure(failure),
                (medicines) => MedicinesState.loadSuccess(medicines),
              ),
            );
          },
          addNewMedicine: (event) async {
            state.maybeWhen(
              loadSuccess: (medicines) async {
                final data = [event.medicine, ...medicines];
                emit(MedicinesState.loadSuccess(data));
              },
              orElse: () {},
            );
          },
          updateMedicine: (event) async {
            final medicine = event.medicine;

            state.maybeWhen(
              loadSuccess: (medicines) async {
                final data = medicines.map((e) {
                  return e.id == medicine.id
                      ? e.copyWith(
                          name: medicine.name,
                          releaseForm: medicine.releaseForm,
                          time: medicine.time,
                          dose: medicine.dose,
                          isConsumed: medicine.isConsumed,
                        )
                      : e;
                }).toList();
                emit(MedicinesState.loadSuccess(data));
              },
              orElse: () {},
            );
          },
        );
      },
    );
  }

  final IMedicineRepository _repository;
}
