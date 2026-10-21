import 'package:drosak_app/core/navigation/app_nav.dart';
import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:drosak_app/core/resources/app_colors.dart';
import 'package:drosak_app/core/resources/app_sizes.dart';
import 'package:drosak_app/features/explore/model/explore_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreBody extends StatelessWidget {
  const ExploreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(AppSizes.pw30),
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 46,
        mainAxisSpacing: 36,
      ),
      itemBuilder: (BuildContext context, int index) {
        final model = ExploreModel.exploreList[index];
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRoutes.mainRoute,
              arguments: model.navIndex,
            );
          },
          child: ExploreItem(model: model),
        );
      },
    );
  }
}

class ExploreItem extends StatelessWidget {
  const ExploreItem({super.key, required this.model});

  final ExploreModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.w120,
      height: AppSizes.h100,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryPurple,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(AppSizes.r18),
        color: AppColors.primaryBlack,
        border: BoxBorder.all(width: 1, color: AppColors.primaryPurple),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(AppSizes.ph6),
            width: double.infinity,
            height: AppSizes.h20,
            decoration: BoxDecoration(
              color: AppColors.primaryPurple,
              borderRadius: BorderRadius.circular(AppSizes.r12),
            ),
            child: Text(
              model.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: AppSizes.sp16,
                fontFamily: AppFonts.geDinarOne,
              ),
            ),
          ),
          Expanded(child: SvgPicture.asset(model.image, fit: BoxFit.contain)),
        ],
      ),
    );
  }
}
