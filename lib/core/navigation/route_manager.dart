import 'package:drosak_app/core/navigation/app_routes.dart';
import 'package:drosak_app/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:drosak_app/features/splash/ui/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboardingRoute:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );

      case AppRoutes.splashRoute:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      default:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text('Page Not Found'))),
        );
    }
  }
}
