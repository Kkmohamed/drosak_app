import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:drosak_app/core/resources/app_sizes.dart';
import 'package:drosak_app/core/resources/app_strings.dart';
import 'package:drosak_app/core/widgets/vertical_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.onboarding1,
              width: AppSizes.w300,
              height: AppSizes.h200,
              clipBehavior: Clip.none,
            ),
            VerticalSpacing(50),
            Text(
              AppStrings.onboardingText1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppSizes.sp20,
                fontFamily: AppFonts.aAGalaxy,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
