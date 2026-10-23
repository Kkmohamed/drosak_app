import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:drosak_app/core/resources/app_sizes.dart';
import 'package:drosak_app/core/widgets/vertical_spacing.dart';
import 'package:drosak_app/features/stages/models/item_stage_model.dart';
import 'package:drosak_app/features/stages/ui/widgets/custom_stage_item.dart';
import 'package:drosak_app/features/stages/ui/widgets/stages_app_bar.dart';
import 'package:flutter/material.dart';

class StagesScreen extends StatelessWidget {
  const StagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: StagesAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.pw16),
          child: Column(
            children: [
              VerticalSpacing(AppSizes.ph18),
              Expanded(
                child: ListView.separated(
                  clipBehavior: Clip.none,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomStageItem(
                      itemStageModel: ItemStageModel(
                        id: 1,
                        stageName: "الصف الأول الإعدادي",
                        desc:
                            "تلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلاتلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلاتلك الصف هو الصف الاعدادي وفي ثلاث طلاب مثلا",
                        image: AppAssets.stageDefaultImage,
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return VerticalSpacing(AppSizes.ph16);
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
