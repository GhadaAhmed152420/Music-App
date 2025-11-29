import 'package:flutter/cupertino.dart';
import 'package:quran_app/core/resources/consts_values.dart';
import 'package:quran_app/models/quran_track.dart';
import '../core/resources/routes_manager.dart';

class PlayController {
  late QuranTrack quranTrack;
  late int index;

  void getArgIndex(BuildContext context) {
    index = ModalRoute.of(context)!.settings.arguments as int;
    quranTrack = ConstsValues.quranList[index];
  }

  void popToHomeScreen(BuildContext context) {
    Navigator.pop(context, RoutePaths.home);
  }

}
