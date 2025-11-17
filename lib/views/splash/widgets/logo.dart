import 'package:flutter/material.dart';
import '../../../core/resources/assets_manager.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/padding_manager.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorsManager.primaryColor,
            ColorsManager.secondaryColor.withValues(alpha: 0.54),
          ],
        ),
      ),
      child: Padding(
        padding: PaddingManager.p100,
        child: Image(
            image: AssetImage(AssetsManager.logo)
        ),
      ),
    );
  }
}