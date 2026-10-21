import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppAssets.splashUpBorder),
            Image.asset(AppAssets.logo),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(AppAssets.splashBottomBorder),
            ),
          ],
        ),
      ),
    );
  }
}
