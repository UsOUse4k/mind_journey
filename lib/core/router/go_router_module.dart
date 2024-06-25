import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:medi_mind/core/di/injection.dart';
import 'package:medi_mind/core/router/routes.dart';
import 'package:medi_mind/features/auth/presentation/blocs/user_status/user_status_bloc.dart';
import 'package:talker_flutter/talker_flutter.dart';

@module
abstract class GoRouterModule {
  @lazySingleton
  GoRouter goRouter() {
    final userStatusBloc = getIt<UserStatusBloc>();

    return GoRouter(
      navigatorKey: rootNavigatorKey,
      observers: [
        TalkerRouteObserver(getIt<Talker>()),
      ],
      routes: [
        ...$appRoutes,
      ],
      refreshListenable: GoRouterRefreshStream(userStatusBloc.stream),
      redirect: (context, state) {
        final isInOnBoarding =
            state.matchedLocation == const OnBoardingRoute().location;
        final isInLoginPage =
            state.matchedLocation == const LoginRoute().location;
        final isInRegisterPage =
            state.matchedLocation == const RegisterRoute().location;

        return userStatusBloc.state.maybeMap(
          loggedIn: (_) {
            if (!isInOnBoarding && !isInLoginPage && !isInRegisterPage) {
              return null;
            }

            return const CalendarRoute().location;
          },
          loggedOut: (_) {
            if (isInLoginPage || isInRegisterPage) {
              return null;
            }

            return const OnBoardingRoute().location;
          },
          orElse: () => null,
        );
      },
    );
  }
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (_) => notifyListeners(),
        );
  }

  late final StreamSubscription _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
