import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final Widget childWidget;
  const InfoCard({super.key, required this.title, required this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppValues.s13),
      padding: const EdgeInsets.symmetric(vertical: AppValues.s18),
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: AppColors.iconBlue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(3),
                        bottomRight: Radius.circular(3))),
                width: 5,
                height: 25,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Divider(
            color: AppColors.dividerGrey,
          ),
          childWidget,
        ],
      ),
    );
  }
}
