import 'package:flutter/material.dart';
import 'package:quran_app/core/resources/alpha_manager.dart';
import '../../../core/resources/assets_manager.dart';
import '../../../core/resources/colors_manager.dart';

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
            ColorsManager.purple,
            ColorsManager.deepPurple,
            ColorsManager.blue.withValues(alpha: AlphaManager.a0_54),
          ],
        ),
      ),
      child: Image(
          image: AssetImage(AssetsManager.logo)
      ),
    );
  }
}