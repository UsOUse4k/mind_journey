part of 'user_status_bloc.dart';

@freezed
class UserStatusState with _$UserStatusState {
  const factory UserStatusState.initial() = _Initial;
  const factory UserStatusState.loading() = _Loading;
  const factory UserStatusState.loggedIn(User user) = _LoggedIn;
  const factory UserStatusState.loggedOut() = _LoggedOut;
}
