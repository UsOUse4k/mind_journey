import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medi_mind/features/auth/domain/i_auth_facade.dart';
import 'package:medi_mind/features/auth/domain/user.dart';
import 'package:rxdart/rxdart.dart';

part 'user_status_event.dart';
part 'user_status_state.dart';
part 'user_status_bloc.freezed.dart';

@lazySingleton
class UserStatusBloc extends Bloc<UserStatusEvent, UserStatusState> {
  UserStatusBloc(this._facade) : super(const UserStatusState.initial()) {
    on<Started>(
      (event, emit) async {
        await emit.forEach(
          _facade.getUser(),
          onData: (userOption) {
            return userOption.fold(
              () {
                return const UserStatusState.loggedOut();
              },
              (user) {
                return UserStatusState.loggedIn(user);
              },
            );
          },
        );
      },
      transformer: (events, mapper) {
        return events.flatMap(mapper);
      },
    );

    on<LogOut>(
      (event, emit) async {
        emit(const UserStatusState.loading());
        await _facade.logout();
        emit(const UserStatusState.loggedOut());
      },
    );
  }

  final IAuthFacade _facade;
}
