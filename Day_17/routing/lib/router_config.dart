import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing/screens/home.dart';
import 'package:routing/screens/second.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const Second();
          },
        ),
      ],
    ),
  ],
);
