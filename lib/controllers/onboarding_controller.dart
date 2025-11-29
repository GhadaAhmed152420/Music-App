import 'package:flutter/material.dart';
import 'package:quran_app/core/resources/routes_manager.dart';

class OnboardingController {
  static void navigateToMainScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, RoutePaths.main);
  }
}
