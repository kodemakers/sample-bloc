import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_bloc/app/routes/app_routes.dart';
import 'package:sample_bloc/home/views/home_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.home.route,
  routes: [
    GoRoute(
      path: AppRoutes.home.route,
      name: AppRoutes.home.name,
      pageBuilder: (c, s) => const NoTransitionPage(child: HomePage()),
    ),
  ],
);
