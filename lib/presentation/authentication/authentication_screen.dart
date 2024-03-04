import 'dart:ui';

import 'package:fintech_app/presentation/authentication/components/circle_components.dart';
import 'package:fintech_app/presentation/authentication/sign_in/sign_in_screen.dart';
import 'package:fintech_app/presentation/authentication/sign_up/sign_up_screen.dart';
import 'package:fintech_app/presentation/resources/app_scafold.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';

class UserAuthentication extends StatefulWidget {
  const UserAuthentication({super.key});

  @override
  State<UserAuthentication> createState() => _UserAuthenticationState();
}

class _UserAuthenticationState extends State<UserAuthentication>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: false,
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              CircleComponent(
                color: Theme.of(context).colorScheme.tertiary,
                alignmentGeometry: const AlignmentDirectional(0, -0.8),
              ),
              CircleComponent(
                color: Theme.of(context).colorScheme.secondary,
                alignmentGeometry: const AlignmentDirectional(-2.7, -1.4),
              ),
              CircleComponent(
                color: Theme.of(context).colorScheme.primary,
                alignmentGeometry: const AlignmentDirectional(2.7, -1.4),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 100.0,
                  sigmaY: 100.0,
                  // tileMode: TileMode.repeated,
                ),
                child: Container(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.8,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: TabBar(
                          controller: tabController,
                          unselectedLabelColor:
                              Theme.of(context).colorScheme.onBackground,
                          dividerColor: Colors.transparent,
                          tabs: const [
                            Padding(
                              padding: EdgeInsets.all(AppValues.s12),
                              child: Text(
                                'Sign In',
                                style: TextStyle(fontSize: AppValues.s18),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(AppValues.s12),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(fontSize: AppValues.s18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: tabController,
                          children: [SignInScreen(), SignUpScreen()],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
