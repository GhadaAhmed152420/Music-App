import 'package:flutter/material.dart';
import 'package:quran_app/controllers/onboarding_controller.dart';
import 'package:quran_app/core/resources/colors_manager.dart';
import 'package:quran_app/core/resources/font_size_manager.dart';
import 'package:quran_app/core/resources/strings_manager.dart';
import '../../../core/resources/height_manager.dart';
import '../../../core/resources/radius_manager.dart';
import '../../../core/resources/width_manager.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        OnboardingController.navigateToMainScreen(context);
      },
      child: Container(
        width: WidthManager.w171,
        height: HeightManager.h60,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: ColorsManager.white, width: WidthManager.w2),
          ),
          borderRadius: BorderRadius.circular(RadiusManager.r50),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorsManager.deepBlue, ColorsManager.lightBlue],
          ),
        ),
        child: Center(
          child: const Text(
            StringsManager.onboardingButtonText,
            style: TextStyle(
              color: ColorsManager.white,
              fontSize: FontSizeManager.fs18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
