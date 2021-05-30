import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


class XylophoneApp extends StatelessWidget {
  void audioPlayer(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Widget keyMaker({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          audioPlayer(soundNumber);
        }, child: null,

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              keyMaker(color: Colors.red, soundNumber: 1),
              keyMaker(color: Colors.orange, soundNumber: 2),
              keyMaker(color: Colors.yellow, soundNumber: 3),
              keyMaker(color: Colors.green, soundNumber: 4),
              keyMaker(color: Colors.teal, soundNumber: 5),
              keyMaker(color: Colors.blue, soundNumber: 6),
              keyMaker(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
