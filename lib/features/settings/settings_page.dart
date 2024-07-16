import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_mind/features/auth/presentation/blocs/user_status/user_status_bloc.dart';
import 'package:medi_mind/features/common/presentation/utils/in_development_dialog.dart';
import 'package:medi_mind/features/settings/setting_dialog.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool sendNotifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const Gap(15),
              Stack(
                alignment: Alignment.center,
                children: [
                  const Text(
                    "Настройки",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: SizedBox(
                        width: 78,
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
                    ),
                  ),
                ],
              ),
              const Gap(20),
              GestureDetector(
                onTap: () {
                  showInDevelopmentDialog(context);
                },
                child: Container(
                  height: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6C63FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        "Местоположение",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "KG",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                          Gap(10),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(15),
              Container(
                height: 65,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFF6C63FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Text(
                      "Уведомления",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                      value: sendNotifications,
                      onChanged: (value) {
                        sendNotifications = value;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              const Gap(15),
              GestureDetector(
                onTap: () {
                  showInDevelopmentDialog(context);
                },
                child: Container(
                  height: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6C63FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        "Язык",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "РУС",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          Gap(4),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(15),
              GestureDetector(
                onTap: () {
                  showInDevelopmentDialog(context);
                },
                child: Container(
                  height: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6C63FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        "Помощь",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(15),
              GestureDetector(
                onTap: () {
                  showDialog<SettingsResult>(
                    context: context,
                    builder: (context) {
                      return const SettingsDialog();
                    },
                  ).then(
                    (value) {
                      switch (value) {
                        case SettingsResult.exit:
                          context
                              .read<UserStatusBloc>()
                              .add(const UserStatusEvent.logOut());
                        default:
                          break;
                      }
                    },
                  );
                },
                child: Container(
                  height: 65,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6C63FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        "Выйти",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(9),
              Row(
                children: [
                  const Gap(15),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Версия ",
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 9.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: "0.1.0",
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 11.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
