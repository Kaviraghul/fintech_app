import 'package:fintech_app/gen/assets.gen.dart';
import 'package:fintech_app/presentation/commonWidgets/info_card/info_card.dart';
import 'package:fintech_app/presentation/resources/app_buttons.dart';
import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MySipComponent extends StatelessWidget {
  const MySipComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      title: "My SIPs",
      childWidget: Container(
        padding: EdgeInsets.all(AppValues.s13),
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset(Assets.lottie.moneyGrowthLottie),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Start a ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: "SIP ",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: "with just ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: "₹50",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Invest in India's growth story",
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Divider(
              color: AppColors.dividerGrey,
            ),
            ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return Divider(
                    color: AppColors.dividerGrey,
                  );
                },
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.lightGrey,
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.access_alarm),
                    ),
                    title: Text(
                      "Mutual Funds",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: AppButtons.getTextButton(
                      text: "Start SIP",
                      onTap: () {},
                      active: true,
                      showBackgroundColor: false,
                    ),
                  );
                },
                itemCount: 3)
          ],
        ),
      ),
    );
  }
}
