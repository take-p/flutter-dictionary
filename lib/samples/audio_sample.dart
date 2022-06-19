import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioSample extends StatelessWidget {
  const AudioSample({Key? key}) : super(key: key);

  static final _audio = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () {
          _audio.play("audios/001.mp3");
        },
      icon: const Icon(
        Icons.play_arrow),
      ),
    );
  }
}
