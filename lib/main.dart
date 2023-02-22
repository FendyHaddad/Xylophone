import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.blue, 4),
              buildKey(Colors.green, 5),
              buildKey(Colors.grey, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    audioPlayer.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(backgroundColor, int soundNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () => playSound(soundNumber),
        style: TextButton.styleFrom(backgroundColor: backgroundColor),
        child: const Text(''),
      ),
    );
  }
}
