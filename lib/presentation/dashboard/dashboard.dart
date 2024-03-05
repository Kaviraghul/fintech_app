import 'package:fintech_app/presentation/dashboard/components/goal_asset_container/goals_and_assets_container.dart';
import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        child: Column(
          children: [
            Container(
              height: 100,
              color: AppColors.navyBlue,
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                color: AppColors.darkNavyBlue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Sensex:',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '+68.31',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.white,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GoalsAndAssetsContainer(),
          ],
        ),
      ),
    );
  }
}
