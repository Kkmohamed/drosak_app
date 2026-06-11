import 'package:drosak_app/features/on_boarding/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class OnBoardingController extends ChangeNotifier {
  late PageController pageController;
  OnBoardingController() {
    pageController = PageController();
  }

  int currentPage = 0;

  void onPageChanged(int index) {
    currentPage = index;
    notifyListeners();
  }

  bool isLastPage() {
    return currentPage == OnBoardingModel.onBoardingItemsList.length - 1;
  }

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
