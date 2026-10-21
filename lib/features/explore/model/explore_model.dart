import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:drosak_app/core/resources/app_strings.dart';

class ExploreModel {
  final String text;
  final String image;

  const ExploreModel({required this.text, required this.image});

  static List<ExploreModel> exploreList = [
    ExploreModel(text: AppStrings.groups, image: AppAssets.onboarding2),
    ExploreModel(text: AppStrings.stages, image: AppAssets.onboarding1),
    ExploreModel(text: AppStrings.attendance, image: AppAssets.onboarding4),
    ExploreModel(text: AppStrings.students, image: AppAssets.onboarding3),
    ExploreModel(text: AppStrings.paying, image: AppAssets.onboarding5),
  ];
}
