import 'package:drosak_app/core/resources/app_colors.dart';
import 'package:drosak_app/features/splash/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      body: const SplashBody(),
    );
  }
}
