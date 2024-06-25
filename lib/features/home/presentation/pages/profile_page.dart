import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:medi_mind/features/auth/presentation/blocs/user_status/user_status_bloc.dart';
import 'package:medi_mind/features/common/presentation/widgets/common_filled_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Gap(36.5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Профиль",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 36.5),
              BlocBuilder<UserStatusBloc, UserStatusState>(
                builder: (context, state) {
                  return state.maybeMap(
                    loggedIn: (state) {
                      final user = state.user;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Имя: ${user.name.getOrCrash()}"),
                          const Gap(10),
                          Text("Фамилия: ${user.surname.getOrCrash()}"),
                          const Gap(10),
                          Text("Электронная почта: ${user.email.getOrCrash()}"),
                        ],
                      );
                    },
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: CommonFilledButton(
                        onTap: () {
                          context
                              .read<UserStatusBloc>()
                              .add(const UserStatusEvent.logOut());
                        },
                        text: "Выйти из аккаунта",
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
