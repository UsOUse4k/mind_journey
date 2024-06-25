import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:medi_mind/features/auth/domain/auth_failure.dart';
import 'package:medi_mind/features/auth/domain/auth_value_objects.dart';
import 'package:medi_mind/features/auth/domain/i_auth_facade.dart';
import 'package:medi_mind/features/common/domain/value_objects.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._facade) : super(RegisterState.initial()) {
    on<RegisterEvent>(
      (event, emit) async {
        await event.map(
          nameChanged: (event) async {
            emit(
              state.copyWith(
                name: NotEmptyString(event.name),
                showErrorMessages: false,
                authFailureOrSuccessOption: none(),
              ),
            );
          },
          surnameChanged: (event) async {
            emit(
              state.copyWith(
                surname: NotEmptyString(event.surname),
                showErrorMessages: false,
                authFailureOrSuccessOption: none(),
              ),
            );
          },
          emailChanged: (event) async {
            emit(
              state.copyWith(
                email: Email(event.email),
                showErrorMessages: false,
                authFailureOrSuccessOption: none(),
              ),
            );
          },
          passwordChanged: (event) async {
            emit(
              state.copyWith(
                password: Password(event.password),
                showErrorMessages: false,
                authFailureOrSuccessOption: none(),
              ),
            );
          },
          register: (event) async {
            Either<AuthFailure, Unit>? failureOrSuccess;

            final isNameValid = state.name.isValid();
            final isSurnameValid = state.surname.isValid();
            final isEmailValid = state.email.isValid();
            final isPasswordValid = state.password.isValid();

            if (isNameValid &&
                isSurnameValid &&
                isEmailValid &&
                isPasswordValid) {
              emit(
                state.copyWith(
                  isSubmitting: true,
                  authFailureOrSuccessOption: none(),
                ),
              );

              failureOrSuccess = await _facade.register(
                name: state.name,
                surname: state.surname,
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
