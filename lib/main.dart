import 'package:device_info_plus/device_info_plus.dart';
import 'package:drosak_app/core/navigation/app_routes.dart';
import 'dart:io';
import 'package:drosak_app/drosak_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );
  String initialRoute = await getIntialRoute();
  runApp(DrosakApp(initialRoute: initialRoute));
  FlutterNativeSplash.remove();
}

Future<String> getIntialRoute() async {
  String? androidVersion = await getAndroidVersion();
  if (androidVersion != null) {
    if (int.parse(androidVersion) >= 12) {
      return AppRoutes.splashRoute;
    }
  }
  return AppRoutes.onboardingRoute;
}

Future<String?> getAndroidVersion() async {
  if (Platform.isAndroid) {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.version.release;
  }
  return null;
}
