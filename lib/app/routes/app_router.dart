import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../app.dart';

sealed class AppRouter {
  static const home = '/';

  static const settings = 'settings';

  static const settingsPath = '/$settings';
  static const homePath = home;

  static final config = GoRouter(
    initialLocation: homePath,
    routes: routes,
    observers: [RouteObserver()],
  );

  static final List<GoRoute> routes = [
    GoRoute(
      path: home,
      name: home,
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(path: settings, name: settings, builder: (context, state) => const SettingsPage()),
      ],
    ),
  ];
}

class RouteObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    log('push: ${route.settings.name}');
  }
}
