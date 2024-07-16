import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_mind/core/widgets/root_bottom_navigation_bar.dart';
import 'package:medi_mind/features/common/presentation/utils/in_development_dialog.dart';
import 'package:medi_mind/gen/assets.gen.dart';

class RootScaffold extends StatelessWidget {
  const RootScaffold(this.navigationShell, {super.key});

  final StatefulNavigationShell navigationShell;

  void goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
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
        iconPath: Assets.images.pill.path,
        label: "Таблетница",
      ),
      RootBottomNavigationBarItem(
        iconPath: Assets.images.profile.path,
        label: "Профиль",
      ),
    ];

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: RootBottomNavigationBar(
        items: items,
        selectedIndex: switch (navigationShell.currentIndex) {
          0 => 0,
          1 => 3,
          _ => null,
        },
        onSelectedIndexChange: (index) {
          switch (index) {
            case 0:
              goBranch(0);
            case 1:
            case 2:
              showInDevelopmentDialog(context);
            case 3:
              goBranch(1);
          }
        },
      ),
    );
  }
}
