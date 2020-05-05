import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache player = AudioCache();
  final audioFiles = [
    "note1.wav",
    "note2.wav",
    "note3.wav",
    "note4.wav",
    "note5.wav",
    "note6.wav",
    "note7.wav"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CreateKey(audioNum: 0, keyColor: Colors.red),
              CreateKey(audioNum: 1, keyColor: Colors.orange),
              CreateKey(audioNum: 2, keyColor: Colors.yellow),
              CreateKey(audioNum: 3, keyColor: Colors.green),
              CreateKey(audioNum: 4, keyColor: Colors.teal),
              CreateKey(audioNum: 5, keyColor: Colors.blue),
              CreateKey(audioNum: 6, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  void PlayAudio(fileName) {
    player.play(fileName);
  }

  Widget CreateKey({int audioNum, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          PlayAudio(audioFiles[audioNum]);
        },
        padding: EdgeInsets.all(0),
        child: Container(
          color: keyColor,
        ),
      ),
    );
  }
}
