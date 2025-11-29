import 'package:flutter/material.dart';
import 'package:quran_app/views/play/view/play_screen.dart';
import '../../views/Main/view/main_screen.dart';
import '../../views/home/view/home_screen.dart';
import '../../views/onboarding/view/onboarding_screen.dart';
import '../../views/splash/view/splash_screen.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RoutePaths.splash: (_) => SplashScreen(),
    RoutePaths.onboarding: (_) => OnBoardingScreen(),
    RoutePaths.main: (_) => MainScreen(),
    RoutePaths.home: (_) => HomeScreen(),
    RoutePaths.play: (_) => PlayScreen(),
  };
}

class RoutePaths {
  static const splash = '/splash';
  static const onboarding = '/onboarding';
  static const main = '/main';
  static const home = '/home';
  static const play = '/play';

}

