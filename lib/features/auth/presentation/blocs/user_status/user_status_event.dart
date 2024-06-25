part of 'user_status_bloc.dart';

@freezed
class UserStatusEvent with _$UserStatusEvent {
  const factory UserStatusEvent.started() = Started;
  const factory UserStatusEvent.logOut() = LogOut;
}
