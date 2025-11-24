import 'package:flutter/material.dart';
import '../core/resources/routes_manager.dart';
import '../models/songs_model.dart';

class HomeController {
  static SongsModel songsModel = SongsModel(
    image: 'https://picsum.photos/300/300',
    name: "Song Name",
    singer: "Singer Name",
    path: '',
  );

  static void navigateToPlayScreen(BuildContext context) {
    Navigator.pushNamed(context, RoutePaths.play);
  }
}
