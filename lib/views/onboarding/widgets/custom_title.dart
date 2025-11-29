import 'package:flutter/material.dart';
import 'package:quran_app/core/resources/font_size_manager.dart';
import 'package:quran_app/core/resources/strings_manager.dart';
import '../../../core/resources/assets_manager.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/height_manager.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          height: HeightManager.h1_2,
          fontSize: FontSizeManager.fs50,
          fontWeight: FontWeight.bold,
          color: ColorsManager.white,
          fontFamily: AssetsManager.orbitron,
        ),
        children: [
          TextSpan(text: StringsManager.onboardingTitle1),
          TextSpan(
            text: StringsManager.onboardingTitle2,
            style: TextStyle(color: ColorsManager.lightBlue),
          ),
        ],
      ),
    );
  }
}
