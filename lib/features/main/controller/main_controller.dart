import 'package:flutter/material.dart';

class MainController extends ChangeNotifier {
  int currentIndex;

  MainController({int initialIndex = 0}) : currentIndex = initialIndex;

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
