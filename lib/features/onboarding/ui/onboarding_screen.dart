import 'package:dots_indicator/dots_indicator.dart';
import 'package:drosak_app/core/navigation/app_nav.dart';
import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:drosak_app/core/resources/app_colors.dart';
import 'package:drosak_app/core/resources/app_keys.dart';
import 'package:drosak_app/core/resources/app_sizes.dart';
import 'package:drosak_app/core/resources/app_strings.dart';
import 'package:drosak_app/core/storage/preferences_manager.dart';
import 'package:drosak_app/core/widgets/vertical_spacing.dart';
import 'package:drosak_app/features/onboarding/model/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../controller/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingController(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Consumer<OnboardingController>(
            builder: (context, value, child) {
              final controller = value;
              return PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.onPageChanged,
                itemCount: OnboardingModel.onboardingList.length,
                itemBuilder: (context, index) {
                  final model = OnboardingModel.onboardingList[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      SvgPicture.asset(
                        model.image,
                        width: AppSizes.w300,
                        height: AppSizes.h200,
                        clipBehavior: Clip.none,
                      ),
                      VerticalSpacing(50),
                      Text(
                        model.text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppSizes.sp20,
                          fontFamily: AppFonts.aAGalaxy,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.pw12,
                          vertical: AppSizes.ph11,
                        ),
                        height: AppSizes.h40,
                        decoration: BoxDecoration(
                          color: AppColors.primaryPurple,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Visibility(
                              visible: !controller.isLastPage,
                              child: GestureDetector(
                                onTap: () {
                                  PreferencesManager().setBool(
                                    AppKeys.isOnboardingCompleted,
                                    true,
                                  );
                                  Navigator.pushReplacementNamed(
                                    context,
                                    AppRoutes.exploreRoute,
                                  );
                                },
                                child: Text(
                                  AppStrings.skip,
                                  style: TextStyle(
                                    fontSize: AppSizes.sp15,
                                    fontFamily: AppFonts.geDinarOne,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            DotsIndicator(
                              position: index.toDouble(),
                              decorator: DotsDecorator(
                                activeColor: Colors.white,
                                color: Colors.white.withValues(alpha: .3),
                              ),
                              dotsCount: OnboardingModel.onboardingList.length,
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.nextPage();
                                if (controller.isLastPage) {
                                  PreferencesManager().setBool(
                                    AppKeys.isOnboardingCompleted,
                                    true,
                                  );
                                  Navigator.pushReplacementNamed(
                                    context,
                                    AppRoutes.exploreRoute,
                                  );
                                }
                              },
                              child: Text(
                                AppStrings.next,
                                style: TextStyle(
                                  fontSize: AppSizes.sp15,
                                  fontFamily: AppFonts.geDinarOne,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
