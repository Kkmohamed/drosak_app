import 'package:drosak_app/features/main/ui/main_screen.dart';
import 'package:drosak_app/features/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../../features/explore/ui/explore_screen.dart';
import '../../features/splash/ui/splash_screen.dart';

class AppNav {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splashRoute: (context) => const SplashScreen(),
    AppRoutes.onboardingRoute: (context) => const OnboardingScreen(),
    AppRoutes.exploreRoute: (context) => const ExploreScreen(),
    AppRoutes.mainRoute: (context) => MainScreen(),
  };
}

class AppRoutes {
  static const String splashRoute = "/splash";
  static const String onboardingRoute = "/onboarding";
  static const String exploreRoute = "/explore";
  static const String mainRoute = "/main";
}
