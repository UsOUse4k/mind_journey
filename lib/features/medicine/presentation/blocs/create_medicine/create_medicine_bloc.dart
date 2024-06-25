import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medi_mind/features/common/domain/value_objects.dart';
import 'package:medi_mind/features/medicine/domain/i_medicine_repository.dart';
import 'package:medi_mind/features/medicine/domain/medicine.dart';
import 'package:medi_mind/features/medicine/domain/medicine_failure.dart';

part 'create_medicine_event.dart';
part 'create_medicine_state.dart';
part 'create_medicine_bloc.freezed.dart';

@injectable
class CreateMedicineBloc
    extends Bloc<CreateMedicineEvent, CreateMedicineState> {
  CreateMedicineBloc(this._repository) : super(CreateMedicineState.initial()) {
    on<CreateMedicineEvent>(
      (event, emit) async {
        await event.map(
          nameChanged: (event) async {
            emit(
              state.copyWith(
                name: NotEmptyString(event.name),
                medicineFailureOrMedicineOption: none(),
              ),
            );
          },
          releaseFormChanged: (event) async {
            emit(
              state.copyWith(
                releaseForm: event.releaseForm,
                medicineFailureOrMedicineOption: none(),
              ),
            );
          },
          timeChanged: (event) async {
            emit(
              state.copyWith(
                time: event.time,
                medicineFailureOrMedicineOption: none(),
              ),
            );
          },
          doseChanged: (event) async {
            emit(
              state.copyWith(
                dose: event.dose,
                medicineFailureOrMedicineOption: none(),
              ),
            );
          },
          createMedicinePressed: (event) async {
            Either<MedicineFailure, Medicine>? failureOrMedicine;

            final isNameValid = state.name.isValid();
            final isReleaseValid = state.releaseForm != null;
            final isTimeValid = state.time != null;
            final isDoseValid = state.dose != null;

            if (isNameValid && isReleaseValid && isTimeValid && isDoseValid) {
              emit(
                state.copyWith(
                  isSubmitting: true,
                  medicineFailureOrMedicineOption: none(),
                ),
              );

              failureOrMedicine = await _repository.createMedicine(
                name: state.name,
                releaseForm: state.releaseForm!,
                time: state.time!,
                dose: state.dose!,
              );
            }

            emit(
              state.copyWith(
                isSubmitting: false,
                showErrorMessages: true,
                medicineFailureOrMedicineOption: optionOf(failureOrMedicine),
              ),
            );
          },
        );
      },
    );
  }

  final IMedicineRepository _repository;
}
