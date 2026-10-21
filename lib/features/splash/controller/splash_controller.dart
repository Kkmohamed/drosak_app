import 'package:flutter/material.dart';

import '../../../core/navigation/app_nav.dart';
import '../../../core/resources/app_keys.dart';
import '../../../core/storage/preferences_manager.dart';

class SplashController {
  late AnimationController _controller;
  late Animation<Offset> topAnimation;
  late Animation<Offset> bottomAnimation;

  TickerProvider vsync;
  BuildContext context;

  SplashController({required this.vsync, required this.context}) {
    initAnimation();
  }

  void initAnimation() {
    _controller =
        AnimationController(vsync: vsync, duration: Duration(seconds: 1))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              navigateToNextScreen();
            }
          });
    topAnimation = Tween<Offset>(
      begin: Offset(0, -1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    bottomAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
  }

  void dispose() {
    _controller.dispose();
  }

  void navigateToNextScreen() {
    bool isOnboardingCompleted =
        PreferencesManager().getBool(AppKeys.isOnboardingCompleted) ?? false;
    if (isOnboardingCompleted) {
      Navigator.pushReplacementNamed(context, AppRoutes.exploreRoute);
      return;
    }
    Navigator.pushReplacementNamed(context, AppRoutes.onboardingRoute);
  }
}
