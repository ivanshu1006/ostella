import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'constants/routes_constant.dart';
import 'screens/home_screen.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: RouteConstants.home,
      builder: (BuildContext context, GoRouterState state) {
        return const ClassroomScreen();
      },
    ),
  ],
);
