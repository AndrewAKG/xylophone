import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget buildNote(var color, int noteNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildNote(Colors.red, 1),
                buildNote(Colors.yellow, 2),
                buildNote(Colors.green, 3),
                buildNote(Colors.blue, 4),
                buildNote(Colors.indigo, 5),
                buildNote(Colors.teal, 6),
                buildNote(Colors.pink, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
