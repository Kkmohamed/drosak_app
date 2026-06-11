import 'package:drosak_app/core/navigation/app_routes.dart';
import 'package:drosak_app/core/navigation/route_manager.dart';
import 'package:flutter/material.dart';

class DrosakApp extends StatelessWidget {
  const DrosakApp({super.key, this.initialRoute});
  final String? initialRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drosak App',
      onGenerateRoute: RouteManager.onGenerateRoute,
      initialRoute: initialRoute ?? AppRoutes.splashRoute,
    );
  }
}
