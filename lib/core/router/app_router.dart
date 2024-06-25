import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_mind/core/router/routes.dart';

class AppRouter {
  AppRouter(this.context);

  final BuildContext context;

  List<String> get tabLocations => [
        const CalendarRoute().location,
        const ChatRoute().location,
        const ProfileRoute().location,
      ];

  int getCurrentIndex() {
    final String location = GoRouterState.of(context).uri.path;
    if (location == const CalendarRoute().location) return 0;
    var index = 0;
    for (final tab in tabLocations.sublist(1)) {
      index++;
      if (location.startsWith(tab)) return index;
    }
    return 0;
  }

  void switchTab(int index) {
    assert(index >= 0 && index < tabLocations.length);
    final location = tabLocations[index];
    return context.go(location);
  }
}
