import 'package:drosak_app/core/resources/app_assets.dart';

class OnBoardingModel {
  final String image;
  final String title;

  OnBoardingModel({required this.image, required this.title});

  static List<OnBoardingModel> onBoardingItemsList = [
    OnBoardingModel(
      image: AppAssets.onBoarding1,
      title: 'يمكنك إضافة  بعض المراحل التعليمية ',
    ),
    OnBoardingModel(
      image: AppAssets.onBoarding2,
      title: 'يمكنك إضافة  بعض المجموعات لكل مرحلة من المراحل التعليمية',
    ),
    OnBoardingModel(
      image: AppAssets.onBoarding3,
      title: 'يمكنك إضافة  بعض الطلاب لكل جروب الموجودة في كل مرحلة تعليمية',
    ),
    OnBoardingModel(
      image: AppAssets.onBoarding4,
      title: 'يمكنك إضافة حضور و غياب كل طالب',
    ),
    OnBoardingModel(
      image: AppAssets.onBoarding5,
      title:
          'يمكنك إضافة  ما إذا كان الطالب دفع هذا الشهر أم لا وإضافة تاريخ الدفع',
    ),
  ];
}
