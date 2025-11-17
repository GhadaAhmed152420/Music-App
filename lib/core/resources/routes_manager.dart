import 'package:flutter/material.dart';
import '../../views/on_boarding/view/on_boarding_screen.dart';
import '../../views/splash/view/splash_screen.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RoutePaths.splash: (_) => SplashScreen(),
    RoutePaths.onboarding: (_) => OnBoardingScreen(),
  };
}

class RoutePaths {
  static const splash = '/splash';
  static const onboarding = '/onboarding';

}

