import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_mind/core/di/injection.dart';
import 'package:medi_mind/features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:medi_mind/features/common/presentation/utils/common_snackbar.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<RegisterBloc>(),
        child: const _RegisterBody(),
      ),
    );
  }
}

class _RegisterBody extends StatelessWidget {
  const _RegisterBody();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                showCommonSnackBar(
                  context,
                  message: failure.maybeMap(
                    emailAlreadyInUse: (_) =>
                        "Этот электронный адрес уже занят",
                    orElse: () => "Ошибка сервера. Попробуйте позже.",
                  ),
                );
              },
              (_) {},
            ),
          );
        },
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(25),
                        Text(
                          'Регистрация',
                          style: GoogleFonts.nunito(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        const Gap(15),
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xff007AFF),
                              ),
                              const Gap(2),
                              Text(
                                'Назад',
                                style: GoogleFonts.nunito(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff007AFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(60),
                        Text(
                          'Имя',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Gap(10),
                        TextFormField(
                          autocorrect: false,
                          textInputAction: TextInputAction.next,
                          onChanged: (value) => context
                              .read<RegisterBloc>()
                              .add(RegisterEvent.nameChanged(value)),
                          validator: (_) => context
                              .read<RegisterBloc>()
                              .state
                              .name
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (_) => "Поле не должно быть пустым",
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          style: GoogleFonts.nunito(),
                          decoration: InputDecoration(
                            hintText: 'Ваше имя',
                            hintStyle: GoogleFonts.nunito(
                              color: const Color(0xff626262),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: const Color(0xffF1F4FF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'Фамилия',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Gap(10),
                        TextFormField(
                          autocorrect: false,
                          textInputAction: TextInputAction.next,
                          onChanged: (value) => context
                              .read<RegisterBloc>()
                              .add(RegisterEvent.surnameChanged(value)),
                          validator: (_) => context
                              .read<RegisterBloc>()
                              .state
                              .surname
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  empty: (_) => "Поле не должно быть пустым",
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          style: GoogleFonts.nunito(),
                          decoration: InputDecoration(
                            hintText: 'Ваша фамилия',
                            hintStyle: GoogleFonts.nunito(
                              color: const Color(0xff626262),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: const Color(0xffF1F4FF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'Электронная почта',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Gap(10),
                        TextFormField(
                          autocorrect: false,
                          textInputAction: TextInputAction.next,
                          onChanged: (value) => context
                              .read<RegisterBloc>()
                              .add(RegisterEvent.emailChanged(value)),
                          validator: (_) => context
                              .read<RegisterBloc>()
                              .state
                              .email
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidEmail: (_) =>
                                      "Неверный адрес электронной почты",
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          style: GoogleFonts.nunito(),
                          decoration: InputDecoration(
                            hintText: 'Ваша почта',
                            hintStyle: GoogleFonts.nunito(
                              color: const Color(0xff626262),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: const Color(0xffF1F4FF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const Gap(10),
                        Text(
                          'Пароль',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Gap(10),
                        TextFormField(
                          autocorrect: false,
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          onChanged: (value) => context
                              .read<RegisterBloc>()
                              .add(RegisterEvent.passwordChanged(value)),
                          validator: (_) => context
                              .read<RegisterBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  shortPassword: (_) =>
                                      "Слишком короткий пароль",
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                          style: GoogleFonts.nunito(),
                          decoration: InputDecoration(
                            hintText: 'Новый пароль',
                            hintStyle: GoogleFonts.nunito(
                              color: const Color(0xff626262),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: const Color(0xffF1F4FF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            context
                                .read<RegisterBloc>()
                                .add(const RegisterEvent.register());
                          },
                          child: Container(
                            width: double.infinity,
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: state.name.isValid() &&
                                      state.surname.isValid() &&
                                      state.email.isValid() &&
                                      state.password.isValid()
                                  ? const Color(0xFF02036D)
                                  : const Color(0xFF02036D).withOpacity(0.65),
                            ),
                            child: Center(
                              child: Text(
                                !state.isSubmitting ? "Продолжить" : "Загрузка",
                                style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
