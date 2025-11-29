import 'package:flutter/material.dart';
import 'package:music_app/core/resources/font_size_manager.dart';
import 'package:music_app/core/resources/height_manager.dart';
import 'package:music_app/core/resources/padding_manager.dart';
import 'package:music_app/core/resources/width_manager.dart';
import '../../../controllers/home_controller.dart';
import '../../../core/resources/assets_manager.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/consts_values.dart';

class RecommendedMusicList extends StatefulWidget {
  const RecommendedMusicList({super.key});

  @override
  State<RecommendedMusicList> createState() => _RecommendedMusicListState();
}

class _RecommendedMusicListState extends State<RecommendedMusicList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          HomeController.navigateToPlayScreen(context, index);
        },
        child: ListTile(
          leading: SizedBox(
            width: WidthManager.w72,
            height: HeightManager.h72,
            child: CircleAvatar(
              backgroundImage: NetworkImage(  ConstsValues.quranList[index].image),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: PaddingManager.p9),
            child: Text(
              ConstsValues.quranList[index].surahName,
              style: TextStyle(
                color: ColorsManager.white,
                fontSize: FontSizeManager.fs15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          subtitle: Text(
            ConstsValues.quranList[index].reciter,
            style: TextStyle(
              color: ColorsManager.lilac,
              fontSize: FontSizeManager.fs12,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Image.asset(AssetsManager.favorite),
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(height: HeightManager.h21),
      itemCount:   ConstsValues.quranList.length,
    );
  }
}
