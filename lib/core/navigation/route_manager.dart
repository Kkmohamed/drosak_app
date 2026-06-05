import 'package:drosak_app/core/navigation/app_routes.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onbordingRoute:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(body: Center(child: Text('hi'))),
        );
      default:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text('Page Not Found'))),
        );
    }
  }
}
