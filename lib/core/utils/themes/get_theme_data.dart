import 'package:chef_app/core/utils/themes/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData getThemeData() {
  return ThemeData(
    fontFamily: "Cairo",
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
  );
}
