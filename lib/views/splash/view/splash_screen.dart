import 'package:flutter/material.dart';
import 'package:quran_app/controllers/splash_controller.dart';
import '../widgets/logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SplashController.navigateToOnboarding(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashLogo(),
    );
  }
}


