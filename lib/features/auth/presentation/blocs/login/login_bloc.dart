import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medi_mind/features/auth/domain/auth_failure.dart';
import 'package:medi_mind/features/auth/domain/auth_value_objects.dart';
import 'package:medi_mind/features/auth/domain/i_auth_facade.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._facade) : super(LoginState.initial()) {
    on<LoginEvent>(
      (event, emit) async {
        await event.map(
          emailChanged: (event) async {
            emit(
              state.copyWith(
                email: Email(event.email),
                authFailureOrSuccessOption: none(),
              ),
            );
          },
          passwordChanged: (event) async {
            emit(
              state.copyWith(
                password: Password(event.password),
                authFailureOrSuccessOption: none(),
              ),
            );
          },
          login: (event) async {
            Either<AuthFailure, Unit>? failureOrSuccess;

            final isEmailValid = state.email.isValid();
            final isPasswordValid = state.password.isValid();

            if (isEmailValid && isPasswordValid) {
              emit(
                state.copyWith(
                  isSubmitting: true,
                  authFailureOrSuccessOption: none(),
                ),
              );

              failureOrSuccess = await _facade.login(
                email: state.email,
                password: state.password,
              );
            }

            emit(
              state.copyWith(
                isSubmitting: false,
                showErrorMessages: true,
                authFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }

  final IAuthFacade _facade;
}
