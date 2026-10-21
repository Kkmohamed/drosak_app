import 'package:drosak_app/features/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../../features/splash/ui/splash_screen.dart';

class AppNav {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.splashRoute: (context) => const SplashScreen(),
    AppRoutes.onboardingRoute: (context) => const OnboardingScreen(),
  };
}

class AppRoutes {
  static const String splashRoute = "/splash";
  static const String onboardingRoute = "/onboarding";
}
