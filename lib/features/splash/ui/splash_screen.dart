import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:flutter/material.dart';

import '../controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late SplashController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SplashController(vsync: this, context: context);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SlideTransition(
              position: _controller.topAnimation,
              child: Image.asset(AppAssets.splashUpBorder),
            ),
            Image.asset(AppAssets.logo),
            Align(
              alignment: Alignment.bottomRight,
              child: SlideTransition(
                position: _controller.bottomAnimation,
                child: Image.asset(AppAssets.splashBottomBorder),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
