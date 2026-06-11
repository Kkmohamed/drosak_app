import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.assetName,
    required this.text,
  });

  final String assetName;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(assetName, height: 300),
        const SizedBox(height: 50),
        Text(
          textAlign: TextAlign.center,
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: AppAssets.aagalaxyFont,
          ),
        ),
      ],
    );
  }
}
