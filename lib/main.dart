import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:drosak_app/app/drosak.dart';
import 'package:flutter/material.dart';

import 'core/navigation/app_nav.dart';
import 'core/storage/preferences_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String initialRoute = await getInitialRoute();
  await PreferencesManager().init();
  runApp(Drosak(initialRoute: initialRoute));
}

Future<int?> getAndroidVersion() async {
  if (Platform.isAndroid) {
    final deviceInfoPlugin = DeviceInfoPlugin();
    final AndroidDeviceInfo deviceInfo = await deviceInfoPlugin.androidInfo;
    return int.parse(deviceInfo.version.release);
  }
  return null;
}

Future<String> getInitialRoute() async {
  int? androidVersion = await getAndroidVersion();
  if (androidVersion != null && androidVersion >= 12) {
    return AppRoutes.splashRoute;
  } else {
    return AppRoutes.onboardingRoute;
  }
}
