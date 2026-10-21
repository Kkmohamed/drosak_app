import 'package:drosak_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/navigation/app_nav.dart';

class Drosak extends StatelessWidget {
  const Drosak({super.key, required this.initialRoute});

  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        routes: AppNav.routes,
        initialRoute: initialRoute,
      ),
    );
  }
}
