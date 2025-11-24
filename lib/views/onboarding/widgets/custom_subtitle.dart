import 'package:flutter/material.dart';
import 'package:music_app/core/resources/font_size_manager.dart';
import 'package:music_app/core/resources/strings_manager.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/padding_manager.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p65),
      child: Text(
        StringsManager.onboardingSubtitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ColorsManager.white,
          fontSize: FontSizeManager.fs15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}