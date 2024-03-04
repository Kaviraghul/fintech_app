import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;
  final bool? padding;
  const AppScaffold({
    required this.child,
    this.bottomNavigationBar,
    this.padding = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: padding!
              ? const EdgeInsets.all(AppValues.s5)
              : const EdgeInsets.all(0),
          child: child,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
