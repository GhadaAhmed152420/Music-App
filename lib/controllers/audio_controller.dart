import 'package:audioplayers/audioplayers.dart';
import '../core/resources/consts_values.dart';

class AudioController {
  late int index;
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  late Uri url;
  AudioController(this.index){
    audioCache = AudioCache(prefix: "");
    audioPlayer = AudioPlayer();
  }

  void playTrack() async {
    url = await audioCache.load(ConstsValues.quranList[index].audioPath);
    audioPlayer.play(UrlSource(url.toString()));
  }

  void disposeTrack() {
    audioPlayer.dispose();
  }
}
