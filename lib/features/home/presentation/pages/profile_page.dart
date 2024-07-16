import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_mind/core/router/routes.dart';
import 'package:medi_mind/features/auth/presentation/blocs/user_status/user_status_bloc.dart';
import 'package:medi_mind/features/common/presentation/utils/in_development_dialog.dart';
import 'package:medi_mind/features/medicine/presentation/widgets/medicine_list.dart';
import 'package:medi_mind/gen/assets.gen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Gap(15),
            Stack(
              alignment: Alignment.center,
              children: [
                const Text(
                  "Профиль",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Positioned(
                  right: 25,
                  child: IconButton(
                    onPressed: () {
                      const SettingsRoute().push(context);
                    },
                    icon: SizedBox.square(
                      dimension: 30,
                      child: Image.asset(
                        Assets.images.settings.path,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(12),
            BlocBuilder<UserStatusBloc, UserStatusState>(
              builder: (context, state) {
                return state.maybeMap(
                  loggedIn: (state) {
                    final user = state.user;
                    return Container(
                      color: const Color(0xFF6C63FF),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(30),
                          const CircleAvatar(
                            radius: 67,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person_rounded,
                              color: Colors.black,
                              size: 50,
                            ),
                          ),
                          const Gap(3),
                          GestureDetector(
                            onTap: () {
                              showInDevelopmentDialog(context);
                            },
                            child: Row(
                              children: [
                                Text(
                                  "${user.name.getValue()} ${user.surname.getValue()}",
                                  style: GoogleFonts.manrope(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const Gap(15),
                                const Icon(
                                  Icons.edit_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          const Gap(7),
                          Text(
                            user.email.getValue(),
                            style: GoogleFonts.manrope(
                              color: const Color(0xFFD0CCF6),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Gap(11),
                        ],
                      ),
                    );
                  },
                  orElse: () {
                    return const SizedBox.shrink();
                  },
                );
              },
            ),
            const Gap(18),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 153,
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFFE4FAE6),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF7AE582),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "Прием лекарств",
                                style: GoogleFonts.manrope(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF5649DF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Gap(22),
                    const Expanded(
                      child: MedicinesList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
