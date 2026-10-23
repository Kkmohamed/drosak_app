import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:drosak_app/core/resources/app_colors.dart';
import 'package:drosak_app/core/resources/app_sizes.dart';
import 'package:drosak_app/core/resources/app_strings.dart';
import 'package:flutter/material.dart';

class StagesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StagesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.primaryPurple,
      title: Text(
        AppStrings.stages,
        style: TextStyle(
          fontSize: AppSizes.sp16,
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.geDinarOne,
          color: Colors.white,
        ),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(Icons.add_circle_outline, color: Colors.white),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(Icons.search_outlined, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
