import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alpha_manager.dart';
import 'package:music_app/core/resources/assets_manager.dart';
import 'package:music_app/views/onboarding/widgets/custom_btn.dart';
import 'package:music_app/views/onboarding/widgets/custom_title.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/height_manager.dart';
import '../widgets/custom_subtitle.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorsManager.purple,
              ColorsManager.deepPurple,
              ColorsManager.blue.withValues(alpha: AlphaManager.a0_54),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: HeightManager.h111),
            CustomTitle(),
            SizedBox(height: HeightManager.h11),
            CustomSubTitle(),
            SizedBox(height: HeightManager.h58),
            CustomBtn(),
            Expanded(
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(AssetsManager.musicGuy),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 199,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                          ColorsManager.blue.withValues(alpha: AlphaManager.a0_04),
                            ColorsManager.deepPurple,
                          ]),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
