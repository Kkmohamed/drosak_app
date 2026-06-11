import 'package:drosak_app/features/on_boarding/controller/on_boarding_controller.dart';
import 'package:drosak_app/features/on_boarding/ui/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnBoardingController(),
      child: Scaffold(body: OnBoardingBody()),
    );
  }
}
