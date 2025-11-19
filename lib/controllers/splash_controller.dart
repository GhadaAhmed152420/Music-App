import 'package:flutter/material.dart';
import '../core/resources/routes_manager.dart';

class SplashController {
  static void navigateToOnboarding(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, RoutePaths.onboarding);
      }
    });
  }
}

class DurationManager {
  static const Duration splashDuration = Duration(seconds: 3);
}
