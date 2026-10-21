import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:drosak_app/core/resources/app_colors.dart';
import 'package:drosak_app/core/resources/app_sizes.dart';
import 'package:drosak_app/core/resources/app_strings.dart';
import 'package:drosak_app/features/explore/ui/widgets/explore_body.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlack,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.pw12),
            child: Text(
              AppStrings.exploreApp,
              style: TextStyle(
                fontSize: AppSizes.sp20,
                color: AppColors.primaryPurple,
                fontFamily: AppFonts.geDinarOne,
              ),
            ),
          ),
        ],
      ),
      body: ExploreBody(),
    );
  }
}
