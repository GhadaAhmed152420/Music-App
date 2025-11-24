import 'package:flutter/material.dart';
import 'package:music_app/core/resources/colors_manager.dart';
import 'package:music_app/core/resources/padding_manager.dart';
import 'package:music_app/core/resources/strings_manager.dart';
import '../widgets/custom_search_box.dart';
import '../widgets/home_partition_title.dart';
import '../widgets/recently_played_list.dart';
import '../widgets/recommended_music_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [ColorsManager.purple, ColorsManager.darkPurple],
        ),
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            CustomSearchBox(),
            HomePartitionTitle(
              title: StringsManager.homePartitionTitle1,
              rightPadding: PaddingManager.p208,
            ),
            RecentlyPlayedList(),
            HomePartitionTitle(
              title: StringsManager.homePartitionTitle2,
              rightPadding: PaddingManager.p160,
            ),
            RecommendedMusicList(),
          ],
        ),
      ),
    );
  }
}
