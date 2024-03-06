import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';

class DataSafetyWidget extends StatelessWidget {
  const DataSafetyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 60),
      child: Column(
        children: [
          Icon(
            Icons.security,
            color: Colors.green,
            size: 40,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Your data is 100% safe",
            style: TextStyle(
              fontSize: AppValues.s18,
              fontWeight: FontWeight.bold,
              color: AppColors.grey,
            ),
          ),
          Text(
            "Trusted by 1 Crore+ Indians",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "ISO 27001 Certified",
            style: TextStyle(
              fontSize: AppValues.s13,
              fontWeight: FontWeight.w500,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
