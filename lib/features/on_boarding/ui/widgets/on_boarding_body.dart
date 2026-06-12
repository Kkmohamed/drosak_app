import 'package:drosak_app/features/on_boarding/controller/on_boarding_controller.dart';
import 'package:drosak_app/features/on_boarding/models/on_boarding_model.dart';
import 'package:drosak_app/features/on_boarding/ui/widgets/on_boarding_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnBoardingController>(
      builder: (context, controller, child) => PageView.builder(
        itemCount: OnBoardingModel.onBoardingItemsList.length,
        controller: controller.pageController,
        onPageChanged: controller.onPageChanged,
        itemBuilder: (context, index) {
          final item = OnBoardingModel.onBoardingItemsList[index];
          return Column(
            children: [
              const Spacer(),
              OnBoardingItem(assetName: item.image, text: item.title),
              const Spacer(),
              ElevatedButton(
                onPressed: controller.nextPage,
                child: Text(controller.isLastPage ? 'Get Started' : 'Next'),
              ),
            ],
          );
        },
      ),
    );
  }
}
