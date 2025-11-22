import 'package:flutter/material.dart';
import 'package:music_app/core/resources/time_manager.dart';
import '../core/resources/routes_manager.dart';

class SplashController {
  static void navigateToOnboarding(BuildContext context) {
    Future.delayed(Duration(seconds: TimeManager.sec3), () {
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, RoutePaths.onboarding);
      }
    });
  }
}
