import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;
  const AppScaffold({required this.child,  this.bottomNavigationBar ,super.key,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 239, 247),
        body: Padding(
          padding: const EdgeInsets.all(AppValues.s5),
          child: child,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
