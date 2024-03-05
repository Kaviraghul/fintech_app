import 'package:fintech_app/data/dummy_data/ind_money_tabs.dart';
import 'package:fintech_app/presentation/authentication/sign_in/sign_in_screen.dart';
import 'package:fintech_app/presentation/authentication/sign_up/sign_up_screen.dart';
import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';

class IndStocksScreen extends StatefulWidget {
  const IndStocksScreen({super.key});

  @override
  State<IndStocksScreen> createState() => _IndStocksScreenState();
}

class _IndStocksScreenState extends State<IndStocksScreen>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(
        initialIndex: 0, length: indMoneySctionTabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: AppColors.navyBlue,
            child: Column(
              children: [
                TabBar(
                  isScrollable: true,
                  controller: tabController,
                  unselectedLabelColor: AppColors.lightGrey,
                  indicatorColor: AppColors.iconBlue,
                  dividerColor: Colors.transparent,
                  // tabs: const [
                  //   indMoneySctionTabs.map((e) {
                  //     return Padding(
                  //     padding: EdgeInsets.all(AppValues.s12),
                  //     child: Text(
                  //       'Sign In',
                  //       style: TextStyle(fontSize: AppValues.s18),
                  //     ),
                  //   ),
                  //   },).toList(),
                  //   Padding(
                  //     padding: EdgeInsets.all(AppValues.s12),
                  //     child: Text(
                  //       'Sign In',
                  //       style: TextStyle(fontSize: AppValues.s18),
                  //     ),
                  //   ),
                  //   Padding(
                  //     padding: EdgeInsets.all(AppValues.s12),
                  //     child: Text(
                  //       'Sign Up',
                  //       style: TextStyle(fontSize: AppValues.s18),
                  //     ),
                  //   ),
                  // ],

                  tabs: indMoneySctionTabs.map(
                    (tab) {
                      return Padding(
                        padding: EdgeInsets.all(AppValues.s12),
                        child: Text(
                          tab['title']!,
                          style: TextStyle(fontSize: AppValues.s18),
                        ),
                      );
                    },
                  ).toList(),
                ),
                // Expanded(
                //   child: TabBarView(
                //     controller: tabController,
                //     children: [SignInScreen(), SignUpScreen()],
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
