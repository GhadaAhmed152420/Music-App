import '../models/songs_model.dart';

class HomeController {
  static SongsModel songsModel = SongsModel(
    image: 'https://picsum.photos/300/300',
    name: "Song Name",
    singer: "Singer Name",
    path: '',
  );
}