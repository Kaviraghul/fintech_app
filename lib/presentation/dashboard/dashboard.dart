import 'package:fintech_app/presentation/commonWidgets/data_safety/data_safety_widget.dart';
import 'package:fintech_app/presentation/commonWidgets/info_card/info_card.dart';
import 'package:fintech_app/presentation/dashboard/components/goal_asset_container/goals_and_assets_container.dart';
import 'package:fintech_app/presentation/dashboard/components/my_sip/my_sip_component.dart';
import 'package:fintech_app/presentation/resources/app_buttons.dart';
import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
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
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              color: AppColors.navyBlue,
            ),
            GestureDetector(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        color: AppColors.white,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const GoalsAndAssetsContainer(),
            const SizedBox(
              height: 40,
            ),
            const MySipComponent(),
            const SizedBox(
              height: 30,
            ),
            InfoCard(
              title: "Available Balance",
              childWidget: Container(
                padding: const EdgeInsets.all(AppValues.s13),
                child: Column(
                  children: [
                    Row(
                      children: [
                        AppButtons.containerButton(
                          text: "Banks",
                          onTap: () {},
                          active: true,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        AppButtons.containerButton(
                          text: "Ind Wallet",
                          onTap: () {},
                          active: true,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        AppButtons.containerButton(
                          text: "US Wallet",
                          onTap: () {},
                          active: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const Divider(
                      color: AppColors.lightGrey,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const DataSafetyWidget(),
          ],
        ),
      ),
    );
  }
}
