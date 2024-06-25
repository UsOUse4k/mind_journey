part of 'medicines_bloc.dart';

@freezed
class MedicinesState with _$MedicinesState {
  const factory MedicinesState.initial() = _Initial;
  const factory MedicinesState.loadInProgress() = _LoadInProgress;
  const factory MedicinesState.loadSuccess(List<Medicine> medicines) =
      _LoadSuccess;
  const factory MedicinesState.loadFailure(MedicineFailure medicineFailure) =
      _LoadFailure;
}
