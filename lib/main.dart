import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int number) {
    final play = AudioCache();
    play.play('note$number.wav');
  }

  Expanded CreateButton(Color color, int number) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(number);
        }, child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('XyloPhone'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CreateButton(Colors.red, 1),
              CreateButton(Colors.green, 2),
              CreateButton(Colors.yellow, 3),
              CreateButton(Colors.blue, 4),
              CreateButton(Colors.pink, 5),
              CreateButton(Colors.deepOrange, 6),
              CreateButton(Colors.blueGrey, 7),
            ],
          ),
        ),
      ),
    );
  }
}
