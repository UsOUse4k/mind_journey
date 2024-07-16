import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_mind/core/widgets/root_scaffold.dart';
import 'package:medi_mind/features/auth/presentation/pages/login_page.dart';
import 'package:medi_mind/features/auth/presentation/pages/register_page.dart';
import 'package:medi_mind/features/home/presentation/pages/calendar_page.dart';
import 'package:medi_mind/features/home/presentation/pages/profile_page.dart';
import 'package:medi_mind/features/medicine/presentation/pages/add_medicine_page.dart';
import 'package:medi_mind/features/on_boarding/on_boarding_page.dart';
import 'package:medi_mind/features/settings/settings_page.dart';

part 'routes.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<InitialRoute>(path: "/")
class InitialRoute extends GoRouteData {
  const InitialRoute();

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    return const OnBoardingRoute().location;
  }
}

@TypedGoRoute<OnBoardingRoute>(path: "/on-boarding")
class OnBoardingRoute extends GoRouteData {
  const OnBoardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnBoardingPage();
  }
}

@TypedGoRoute<LoginRoute>(path: "/login")
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }
}

@TypedGoRoute<RegisterRoute>(path: "/register")
class RegisterRoute extends GoRouteData {
  const RegisterRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RegisterPage();
  }
}

@TypedStatefulShellRoute<WrapperShellRoute>(
  branches: [
    TypedStatefulShellBranch<CalendarBranch>(
      routes: [
        TypedGoRoute<CalendarRoute>(path: "/calendar"),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileRoute>(
          path: "/profile",
          routes: [
            TypedGoRoute<SettingsRoute>(path: "settings"),
          ],
        ),
      ],
    ),
  ],
)
class WrapperShellRoute extends StatefulShellRouteData {
  const WrapperShellRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return RootScaffold(navigationShell);
  }
}

class CalendarBranch extends StatefulShellBranchData {}

class CalendarRoute extends GoRouteData {
  const CalendarRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: CalendarPage(),
    );
  }
}

@TypedGoRoute<AddMedicineRoute>(path: "/medicine/add")
class AddMedicineRoute extends GoRouteData {
  const AddMedicineRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AddMedicinePage();
  }
}

class ProfileBranch extends StatefulShellBranchData {}

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: ProfilePage(),
    );
  }
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsPage();
  }
}
