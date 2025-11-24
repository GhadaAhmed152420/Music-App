import 'package:flutter/material.dart';
import 'package:music_app/controllers/home_controller.dart';
import 'package:music_app/core/resources/font_size_manager.dart';
import 'package:music_app/core/resources/height_manager.dart';
import 'package:music_app/core/resources/padding_manager.dart';
import 'package:music_app/core/resources/radius_manager.dart';
import 'package:music_app/core/resources/width_manager.dart';
import '../../../core/resources/colors_manager.dart';

class RecentlyPlayedList extends StatelessWidget {
  const RecentlyPlayedList({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.h242,
      child: Padding(
        padding: const EdgeInsets.only(
          top: PaddingManager.p22,
          left: PaddingManager.p22,
        ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              HomeController.navigateToPlayScreen(context);
            },
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(RadiusManager.r10),
                  child: SizedBox(
                    width: WidthManager.w151,
                    height: HeightManager.h151,
                    child: Image.network(HomeController.songsModel.image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: PaddingManager.p9),
                  child: Text(
                    HomeController.songsModel.name,
                    style: TextStyle(
                      color: ColorsManager.white,
                      fontSize: FontSizeManager.fs15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  HomeController.songsModel.singer,
                  style: TextStyle(
                    color: ColorsManager.lilac,
                    fontSize: FontSizeManager.fs12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) =>
              SizedBox(width: WidthManager.w17),
          itemCount: 3,
        ),
      ),
    );
  }
}
