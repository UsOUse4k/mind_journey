import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_mind/core/di/injection.dart';
import 'package:medi_mind/core/router/routes.dart';
import 'package:medi_mind/features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:medi_mind/features/common/presentation/utils/common_snackbar.dart';
import 'package:medi_mind/features/common/presentation/utils/in_development_dialog.dart';
import 'package:medi_mind/gen/assets.gen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<LoginBloc>(),
        child: const _LoginBody(),
      ),
    );
  }
}

class _LoginBody extends StatelessWidget {
  const _LoginBody();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showCommonSnackBar(
                context,
                message: failure.maybeMap(
                  invalidCredentials: (_) => "Недействительные учетные данные",
                  orElse: () => "Ошибка сервера. Попробуйте позже.",
                ),
              );
            },
            (_) {},
          ),
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 20,
              right: 42,
            ),
            child: Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Вход',
                    style: GoogleFonts.nunito(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(flex: 4),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 5),
                    child: Text(
                      'Электронная почта',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Gap(10),
                  Container(
                    margin: const EdgeInsets.only(left: 11, right: 5),
                    width: 357,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: const Color(0xffF1F4FF),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      onChanged: (value) => context
                          .read<LoginBloc>()
                          .add(LoginEvent.emailChanged(value)),
                      validator: (_) =>
                          context.read<LoginBloc>().state.email.value.fold(
                                (f) => f.maybeMap(
                                  invalidEmail: (_) =>
                                      "Неверный адрес электронной почты",
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                      style: GoogleFonts.nunito(),
                      decoration: InputDecoration(
                        suffix: Text(
                          '@',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        hintText: 'Ваша почта',
                        hintStyle: GoogleFonts.nunito(
                          color: const Color(0xff626262),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 5),
                    child: Text(
                      'Пароль',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Gap(10),
                  Container(
                    margin: const EdgeInsets.only(left: 11, right: 5),
                    width: 357,
                    decoration: BoxDecoration(
                      color: const Color(0xffF1F4FF),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      autocorrect: false,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      onChanged: (value) => context
                          .read<LoginBloc>()
                          .add(LoginEvent.passwordChanged(value)),
                      validator: (_) =>
                          context.read<LoginBloc>().state.password.value.fold(
                                (f) => f.maybeMap(
                                  shortPassword: (_) => "Неверный пароль",
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                      style: GoogleFonts.nunito(),
                      decoration: InputDecoration(
                        hintText: 'Пароль',
                        hintStyle: GoogleFonts.nunito(
                          color: const Color(0xff626262),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          showInDevelopmentDialog(context);
                        },
                        child: Text(
                          'Забыли пароль ?',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff1F41BB),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 19),
                  Padding(
                    padding: const EdgeInsets.only(left: 19, right: 2),
                    child: GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        context.read<LoginBloc>().add(const LoginEvent.login());
                      },
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color:
                              state.email.isValid() && state.password.isValid()
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
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 19, right: 2),
                    child: GestureDetector(
                      onTap: () {
                        showInDevelopmentDialog(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffEDF0F2),
                        ),
                        child: Center(
                          child: Text(
                            'Войти как гость',
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 19, right: 2),
                    child: GestureDetector(
                      onTap: () {
                        const RegisterRoute().push(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffEDF0F2),
                        ),
                        child: Center(
                          child: Text(
                            'Регистрация',
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Войти с помощью',
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff1F41BB),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showInDevelopmentDialog(context);
                        },
                        child: Container(
                          width: 60,
                          height: 44,
                          decoration: BoxDecoration(
                            color: const Color(0xffECECEC),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset(
                              Assets.images.google.path,
                              height: 18.75,
                              width: 18.75,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          showInDevelopmentDialog(context);
                        },
                        child: Container(
                          width: 60,
                          height: 44,
                          decoration: BoxDecoration(
                            color: const Color(0xffECECEC),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset(
                              Assets.images.facebook.path,
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          showInDevelopmentDialog(context);
                        },
                        child: Container(
                          width: 60,
                          height: 44,
                          decoration: BoxDecoration(
                            color: const Color(0xffECECEC),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset(
                              Assets.images.apple.path,
                              height: 18,
                              width: 15.17,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(flex: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Нет аккаунта?',
                          style: GoogleFonts.nunito(
                            color: const Color(0xffB1B8BE),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: ' '),
                            TextSpan(
                              text: 'Регистрация',
                              style: GoogleFonts.nunito(
                                decorationColor: Colors.black,
                                decoration: TextDecoration.underline,
                                color: const Color(0xffB1B8BE),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  const RegisterRoute().push(context);
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
