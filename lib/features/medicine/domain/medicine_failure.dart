import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_failure.freezed.dart';

@freezed
class MedicineFailure with _$MedicineFailure {
  const factory MedicineFailure.serverError() = _ServerError;
  const factory MedicineFailure.notFound() = _NotFound;
  const factory MedicineFailure.userNotLoggedIn() = _UserNotLoggedIn;
}
