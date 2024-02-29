import 'package:fintech_app/presentation/authentication/login/login.dart';
import 'package:fintech_app/presentation/authentication/register/register.dart';
import 'package:fintech_app/presentation/home/home.dart';
import 'package:fintech_app/presentation/onboarding/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static String onboardingScreen = '/';
  static String loginScreen = '/login';
  static String registerScreen = '/register';
  static String homeScreen = '/home';
}

class AppRoutes {
   GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: Routes.onboardingScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const OnBoardingScreen();
        },
      ),
      GoRoute(
        path: Routes.loginScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: Routes.registerScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterScreen();
        },
      ),
      GoRoute(
        path: Routes.homeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const Home();
        },
      ),
    ],
  );
}
