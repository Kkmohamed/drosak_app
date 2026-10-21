import 'package:flutter/cupertino.dart';

import '../model/onboarding_model.dart';

class OnboardingController extends ChangeNotifier {
  final PageController pageController = PageController();
  int currentPage = 0;
  bool isLastPage = false;

  void onPageChanged(int index) {
    currentPage = index;
    if (currentPage == OnboardingModel.onboardingList.length - 1) {
      isLastPage = true;
    } else {
      isLastPage = false;
    }
    notifyListeners();
  }

  void nextPage() {
    if (currentPage < OnboardingModel.onboardingList.length - 1) {
      pageController.animateToPage(
        currentPage + 1,
        duration: Duration(milliseconds: 500),
        curve: Curves.linear,
      );
      if (currentPage == OnboardingModel.onboardingList.length - 1) {
        isLastPage = true;
      } else {
        isLastPage = false;
      }
      notifyListeners();
    }
  }
}
