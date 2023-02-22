import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:purity/presentation/pages/home/home.page.dart';
import 'package:purity/presentation/pages/not_found/not_found.page.dart';

enum R {
  ///  /
  home,
}

class NavigationService {
  NavigationService._();

  static final _key = GlobalKey<NavigatorState>();
  static BuildContext? get context => _key.currentState?.context;
  static final router = GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: '/',
    errorBuilder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        name: R.home.name,
        path: '/',
        builder: _buildHome,
      ),
    ],
  );
}

Widget _buildHome(_, GoRouterState state) {
  return const HomePage();
}
