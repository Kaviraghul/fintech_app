import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  ThemeData appTheme = ThemeData().copyWith(
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.navyBlue,
        foregroundColor: AppColors.grey,
        actionsIconTheme: IconThemeData(color: Colors.white, size: 30)),
    colorScheme: const ColorScheme.light(
      background: AppColors.background,
      primary: Color(0xFF1aa7ec),
      secondary: Color(0xFF4adede),
      tertiary: Color(0xFF797ef6),
    ),
  );
}
