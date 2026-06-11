import 'package:drosak_app/core/navigation/app_routes.dart';
import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _bottomAnimation;
  late Animation<Offset> _topAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(
          vsync: this,
          duration: const Duration(seconds: 1),
        )..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            Navigator.pushReplacementNamed(context, AppRoutes.onboardingRoute);
          }
        });
    _bottomAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          ),
        );
    _topAnimation = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          ),
        );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _bottomAnimation.removeListener(() {});
    _topAnimation.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SlideTransition(
            position: _topAnimation,
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(AppAssets.splashBorder),
            ),
          ),
          Align(child: Image.asset(AppAssets.logoImage)),
          SlideTransition(
            position: _bottomAnimation,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Transform.rotate(
                angle: 180 * 3.14 / 180,
                child: Image.asset(AppAssets.splashBorder),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
