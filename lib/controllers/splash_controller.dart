import 'package:flutter/material.dart';

import '../core/resources/routes_manager.dart';


class SplashController {
  static void navigateToOnboarding(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutePaths.onboarding);
    });
  }
}

