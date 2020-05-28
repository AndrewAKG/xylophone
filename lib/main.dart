import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playNote(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  Expanded buildNote(int noteNumber) {
    return Expanded(
      child: FlatButton(
        child: Image.asset('images/step.png'),
        onPressed: () {
          playNote(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.teal.shade900,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildNote(1),
                buildNote(2),
                buildNote(3),
                buildNote(4),
                buildNote(5),
                buildNote(6),
                buildNote(7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
