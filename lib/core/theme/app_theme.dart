import 'package:drosak_app/core/resources/app_colors.dart';
import 'package:drosak_app/core/resources/app_sizes.dart';
import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  useMaterial3: true,
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  scaffoldBackgroundColor: AppColors.primaryBlack,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.bottomNavBackground,
    type: BottomNavigationBarType.fixed,
    selectedLabelStyle: TextStyle(
      color: AppColors.primaryPurple,
      fontSize: AppSizes.sp10,
    ),
    unselectedLabelStyle: TextStyle(fontSize: AppSizes.sp10),
    selectedItemColor: AppColors.primaryPurple,
    selectedIconTheme: IconThemeData(color: AppColors.primaryPurple),
    unselectedItemColor: AppColors.unselectedGray,
    unselectedIconTheme: IconThemeData(color: AppColors.unselectedGray),
  ),
);
