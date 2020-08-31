import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({note: int, color: String}) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: color,
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(note: 1, color: Colors.red),
              buildKey(note: 2, color: Colors.orange),
              buildKey(note: 3, color: Colors.yellow),
              buildKey(note: 4, color: Colors.lightGreen),
              buildKey(note: 5, color: Colors.green.shade700),
              buildKey(note: 6, color: Colors.blue),
              buildKey(note: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
