import '../../../core/resources/app_assets.dart';
import '../../../core/resources/app_strings.dart';

class OnboardingModel {
  final String image;
  final String text;

  const OnboardingModel({required this.image, required this.text});

  static List<OnboardingModel> onboardingList = [
    OnboardingModel(
      image: AppAssets.onboarding1,
      text: AppStrings.onboardingText1,
    ),
    OnboardingModel(
      image: AppAssets.onboarding2,
      text: AppStrings.onboardingText2,
    ),
    OnboardingModel(
      image: AppAssets.onboarding3,
      text: AppStrings.onboardingText3,
    ),
    OnboardingModel(
      image: AppAssets.onboarding4,
      text: AppStrings.onboardingText4,
    ),
    OnboardingModel(
      image: AppAssets.onboarding5,
      text: AppStrings.onboardingText5,
    ),
  ];
}
