import 'package:drosak_app/core/resources/app_colors.dart';
import 'package:drosak_app/core/resources/app_sizes.dart';
import 'package:drosak_app/core/widgets/horizontal_spacing.dart';
import 'package:drosak_app/features/stages/models/item_stage_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_assets.dart';

class CustomStageItem extends StatelessWidget {
  const CustomStageItem({super.key, required this.itemStageModel});

  final ItemStageModel itemStageModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: AppSizes.ph6,
            horizontal: AppSizes.pw22,
          ),
          height: AppSizes.h100,
          width: AppSizes.w340,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurStyle: BlurStyle.outer,
                spreadRadius: 1,
                blurRadius: 10,
                color: AppColors.primaryPurple,
              ),
            ],
            borderRadius: BorderRadius.circular(AppSizes.r18),
            border: Border.all(width: 1, color: AppColors.primaryPurple),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemStageModel.stageName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: AppSizes.sp16,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFonts.geDinarOne,
                      ),
                    ),
                    Text(
                      itemStageModel.desc,
                      style: TextStyle(
                        color: AppColors.unselectedGray,
                        fontSize: AppSizes.sp10,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFonts.geDinarOne,
                      ),
                    ),
                  ],
                ),
              ),
              HorizontalSpacing(AppSizes.pw8),
              ClipRRect(
                child: Image.asset(
                  itemStageModel.image,
                  width: AppSizes.w64,
                  height: AppSizes.h64,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: -20,
          top: -10,
          child: Center(
            child: CircleAvatar(
              radius: AppSizes.r18,
              backgroundColor: AppColors.primaryPurple,
              child: Text(
                itemStageModel.id.toString(),
                style: TextStyle(color: Colors.white, fontSize: AppSizes.sp12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
