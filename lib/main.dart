import 'package:fintech_app/app/get_it.dart';
import 'package:fintech_app/presentation/authentication/authentication_bloc/authentication_bloc.dart';
import 'package:fintech_app/presentation/resources/app_theme_data.dart';
import 'package:fintech_app/presentation/resources/go_routes.dart';
import 'package:fintech_app/simple_bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:user_repository/user_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBvTqT3b2iVrD5d0A7skPqqoPmHYNS_xho",
        appId: "1:1079340491899:android:a7742b7d5f5c62e077aede",
        messagingSenderId: "1079340491899",
        projectId: "sign-in-using"),
  );

  GetItSetup().setup();
  Bloc.observer = SimpleBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthenticationBloc>(
      create: (context) => AuthenticationBloc(
        userRepository: GetIt.I<FirebaseUserRepo>(),
      ),
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          late String? initialRoute;
          if (state.authenticationStatus !=
              AuthenticationStatus.authenticated) {
            initialRoute = Routes.homeScreen;
          } else {
            initialRoute = Routes.userAuthScreen;
          }
          return MyAppView(intLocation: Routes.userAuthScreen);
        },
      ),
    );
  }
}

class MyAppView extends StatelessWidget {
  final String? intLocation;
  const MyAppView({required this.intLocation, super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter goRoute =
        AppRoutes(initRoute: intLocation ?? Routes.onboardingScreen).router;
    return MaterialApp.router(
      routeInformationParser: goRoute.routeInformationParser,
      routeInformationProvider: goRoute.routeInformationProvider,
      routerDelegate: goRoute.routerDelegate,
      title: 'Fintech app',
      theme: AppThemeData().appTheme,
    );
  }
}
