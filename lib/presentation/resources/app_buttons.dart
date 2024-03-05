import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';

class AppButtons {
  static InkWell getTextButton({
    required String text,
    required VoidCallback onTap,
    required bool active,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: active ? AppColors.lightBlue : AppColors.lightGrey,
          borderRadius: const BorderRadius.all(
            Radius.circular(AppValues.s13),
          ),
        ),
        padding: const EdgeInsets.symmetric(
            vertical: AppValues.s10, horizontal: AppValues.s18),
        child: Text(text),
      ),
    );
  }
}
