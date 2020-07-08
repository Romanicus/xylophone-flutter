import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Expanded xyloButton({Color color, String soundFile}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () => player.play(soundFile),
          child: null,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xyloButton(color: Colors.red, soundFile: 'note1.wav'),
              xyloButton(color: Colors.orange, soundFile: 'note2.wav'),
              xyloButton(color: Colors.yellow, soundFile: 'note3.wav'),
              xyloButton(color: Colors.green, soundFile: 'note4.wav'),
              xyloButton(color: Colors.teal, soundFile: 'note5.wav'),
              xyloButton(color: Colors.blue, soundFile: 'note6.wav'),
              xyloButton(color: Colors.purple, soundFile: 'note7.wav'),
              xyloButton(color: Colors.brown, soundFile: 'fart.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
