import 'package:drosak_app/core/resources/app_assets.dart';
import 'package:drosak_app/core/resources/app_colors.dart';
import 'package:drosak_app/core/resources/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../attendance/ui/attendance_screen.dart';
import '../../cash/ui/cash_screen.dart';
import '../../groups/groups_screen.dart';
import '../../stages/ui/stages_screen.dart';
import '../../students/ui/students_screen.dart';
import '../controller/main_controller.dart';

class MainScreen extends StatelessWidget {
  final int? currentIndex;

  const MainScreen({super.key, this.currentIndex});

  final List<Widget> pages = const [
    CashScreen(),
    AttendanceScreen(),
    StudentsScreen(),
    GroupsScreen(),
    StagesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final int? argsIndex = ModalRoute.of(context)?.settings.arguments as int?;
    final int initialIndex = argsIndex ?? currentIndex ?? 0;
    return ChangeNotifierProvider(
      create: (context) => MainController(initialIndex: initialIndex),
      child: Consumer<MainController>(
        builder: (BuildContext context, value, Widget? child) {
          final controller = value;
          return Scaffold(
            body: IndexedStack(index: controller.currentIndex, children: pages),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.currentIndex,
              onTap: (index) {
                controller.changeIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppAssets.cash,
                    colorFilter: ColorFilter.mode(
                      controller.currentIndex == 0
                          ? AppColors.primaryPurple
                          : AppColors.unselectedGray,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: AppStrings.paying,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppAssets.attendance,
                    colorFilter: ColorFilter.mode(
                      controller.currentIndex == 1
                          ? AppColors.primaryPurple
                          : AppColors.unselectedGray,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: AppStrings.attendance,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppAssets.students,
                    colorFilter: ColorFilter.mode(
                      controller.currentIndex == 2
                          ? AppColors.primaryPurple
                          : AppColors.unselectedGray,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: AppStrings.students,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppAssets.groups,
                    colorFilter: ColorFilter.mode(
                      controller.currentIndex == 3
                          ? AppColors.primaryPurple
                          : AppColors.unselectedGray,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: AppStrings.groups,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppAssets.stages,
                    colorFilter: ColorFilter.mode(
                      controller.currentIndex == 4
                          ? AppColors.primaryPurple
                          : AppColors.unselectedGray,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: AppStrings.stages,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
