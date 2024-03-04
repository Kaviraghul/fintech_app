import 'package:fintech_app/presentation/authentication/authentication_screen.dart';
import 'package:fintech_app/presentation/authentication/sign_in/sign_in_screen.dart';
import 'package:fintech_app/presentation/authentication/sign_up/sign_up_screen.dart';
import 'package:fintech_app/presentation/credit/credit_screen.dart';
import 'package:fintech_app/presentation/dashboard/dashboard.dart';
import 'package:fintech_app/presentation/home/home_screen.dart';
import 'package:fintech_app/presentation/ind_stocks/ind_stocks.dart';
import 'package:fintech_app/presentation/more/more.dart';
import 'package:fintech_app/presentation/onboarding/on_boarding.dart';
import 'package:fintech_app/presentation/us_stocks/us_stocks_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static String onboardingScreen = '/';
  static String userAuthScreen = '/user_auth';
  static String signInScreen = '/signIn';
  static String signUpScreen = '/signUp';
  static String homeScreen = '/home';
  // sub routes
  static String dashboardSection = 'dashboard_section';
  static String indStockSection = 'ind_stocks_section';
  static String usStockSection = 'us_stocks_section';
  static String creditSection = 'credit_section';
  static String moreSection = 'more_section';
}

class AppRoutes {
  final String? initRoute;
  late GoRouter router;

  AppRoutes({required this.initRoute}) {
    router = GoRouter(
      initialLocation: initRoute ?? '/',
      routes: <RouteBase>[
        GoRoute(
          path: Routes.onboardingScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const OnBoardingScreen();
          },
        ),
        GoRoute(
          path: Routes.userAuthScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const UserAuthentication();
          },
        ),
        GoRoute(
          path: Routes.signInScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const SignInScreen();
          },
        ),
        GoRoute(
          path: Routes.signUpScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const SignUpScreen();
          },
        ),
        GoRoute(
          path: Routes.homeScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              path: Routes.indStockSection,
              builder: (BuildContext context, GoRouterState state) {
                return const IndStocksScreen();
              },
            ),
            GoRoute(
              path: Routes.usStockSection,
              builder: (BuildContext context, GoRouterState state) {
                return const UsStocksScreen();
              },
            ),
            GoRoute(
              path: Routes.dashboardSection,
              builder: (BuildContext context, GoRouterState state) {
                return const DashBoardScreen();
              },
            ),
            GoRoute(
              path: Routes.creditSection,
              builder: (BuildContext context, GoRouterState state) {
                return const CreditScreen();
              },
            ),
            GoRoute(
              path: Routes.moreSection,
              builder: (BuildContext context, GoRouterState state) {
                return const MoreSectionScreen();
              },
            ),
          ],
        ),
      ],
    );
  }
}
