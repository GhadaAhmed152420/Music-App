import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes_manager.dart';

class OnboardingController {
  static void navigateToMainScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, RoutePaths.main);
  }
}
