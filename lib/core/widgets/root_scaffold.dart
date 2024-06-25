import 'package:flutter/material.dart';
import 'package:medi_mind/core/router/app_router.dart';
import 'package:medi_mind/core/widgets/root_bottom_navigation_bar.dart';
import 'package:medi_mind/gen/assets.gen.dart';

class RootScaffold extends StatelessWidget {
  const RootScaffold(this.navigator, {super.key});

  final Widget navigator;

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter(context);

    final items = [
      RootBottomNavigationBarItem(
        iconPath: Assets.images.calendar.path,
        label: "Календарь",
      ),
      RootBottomNavigationBarItem(
        iconPath: Assets.images.chat.path,
        label: "Бот",
      ),
      RootBottomNavigationBarItem(
        iconPath: Assets.images.profile.path,
        label: "Профиль",
      ),
    ];

    final selectedIndex = appRouter.getCurrentIndex();

    return Scaffold(
      body: navigator,
      bottomNavigationBar: RootBottomNavigationBar(
        items: items,
        selectedIndex: selectedIndex,
        onSelectedIndexChange: (index) {
          appRouter.switchTab(index);
        },
      ),
    );
  }
}
