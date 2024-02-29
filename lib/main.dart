import 'package:fintech_app/presentation/resources/go_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter goRoute = AppRoutes().router;

    return MaterialApp.router(
      routeInformationParser: goRoute.routeInformationParser,
      routeInformationProvider: goRoute.routeInformationProvider,
      routerDelegate: goRoute.routerDelegate,
      title: 'Fintech app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
