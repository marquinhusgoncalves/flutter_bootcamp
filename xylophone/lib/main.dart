import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(backgroundColor: Colors.red, soundNumber: 1),
              buildKey(backgroundColor: Colors.orange, soundNumber: 2),
              buildKey(backgroundColor: Colors.yellow, soundNumber: 3),
              buildKey(backgroundColor: Colors.green, soundNumber: 4),
              buildKey(backgroundColor: Colors.teal, soundNumber: 5),
              buildKey(backgroundColor: Colors.blue, soundNumber: 6),
              buildKey(backgroundColor: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget buildKey({required Color backgroundColor, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: SizedBox(),
      ),
    );
  }
}
