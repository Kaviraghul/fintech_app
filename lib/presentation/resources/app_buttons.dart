import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';

class AppButtons {
  static InkWell getTextButton({
    required String text,
    required VoidCallback onTap,
    required bool active,
    required bool showBackgroundColor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: showBackgroundColor
              ? active
                  ? AppColors.lightBlue
                  : AppColors.lightGrey
              : null,
          borderRadius: const BorderRadius.all(
            Radius.circular(AppValues.s13),
          ),
        ),
        padding: const EdgeInsets.symmetric(
            vertical: AppValues.s10, horizontal: AppValues.s18),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: active ? AppColors.iconBlue : AppColors.lightGrey,
          ),
        ),
      ),
    );
  }

  static InkWell containerButton({
    required String text,
    required VoidCallback onTap,
    required bool active,
  }) {
    return getTextButton(
      text: text,
      onTap: onTap,
      active: active,
      showBackgroundColor: true,
    );
  }

  static InkWell textOnlyButton({
    required String text,
    required VoidCallback onTap,
    required bool active,
  }) {
    return getTextButton(
      text: text,
      onTap: onTap,
      active: active,
      showBackgroundColor: false,
    );
  }
}
