import 'package:drosak_app/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.primaryBlack,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.bottomNavBackground,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(color: AppColors.primaryPurple),
    selectedItemColor: AppColors.primaryPurple,
    selectedIconTheme: IconThemeData(color: AppColors.primaryPurple),
    unselectedItemColor: AppColors.unselectedGray,
    unselectedIconTheme: IconThemeData(color: AppColors.unselectedGray),
  ),
);
