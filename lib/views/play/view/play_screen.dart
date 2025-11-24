import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alpha_manager.dart';
import 'package:music_app/core/resources/font_size_manager.dart';
import 'package:music_app/core/resources/height_manager.dart';
import 'package:music_app/core/resources/icon_size_manager.dart';
import 'package:music_app/core/resources/padding_manager.dart';
import 'package:music_app/core/resources/radius_manager.dart';
import 'package:music_app/core/resources/strings_manager.dart';
import 'package:music_app/core/resources/width_manager.dart';
import '../../../controllers/home_controller.dart';
import '../../../core/resources/colors_manager.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          size: IconSizeManager.is16,
          color: ColorsManager.white,
        ),
        title: Text(
          StringsManager.playScreenTitle.toUpperCase(),
          style: TextStyle(
            color: ColorsManager.white,
            fontSize: FontSizeManager.fs18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.share_rounded,
            size: IconSizeManager.is16,
            color: ColorsManager.white,
          ),
          SizedBox(width: WidthManager.w21),
          Padding(
            padding: const EdgeInsets.only(right: PaddingManager.p18),
            child: Icon(
              Icons.more_vert_rounded,
              size: IconSizeManager.is16,
              color: ColorsManager.white,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorsManager.purple, ColorsManager.darkPurple],
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: PaddingManager.p174,
                    left: PaddingManager.p96_5,
                    right: PaddingManager.p96_5,
                  ),
                  child: Container(
                    width: WidthManager.w234,
                    height: HeightManager.h247,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(RadiusManager.r20),
                      color: ColorsManager.white.withValues(alpha: AlphaManager.a0_05)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: PaddingManager.p174,
                    left: PaddingManager.p90,
                    right: PaddingManager.p90,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(RadiusManager.r20),
                    child: Image.network(HomeController.songsModel.image),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: PaddingManager.p23),
              child: Text(
                HomeController.songsModel.name,
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: FontSizeManager.fs18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: PaddingManager.p4),
              child: Text(
                HomeController.songsModel.singer,
                style: TextStyle(
                  color: ColorsManager.lilac,
                  fontSize: FontSizeManager.fs12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
