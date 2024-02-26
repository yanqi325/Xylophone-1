import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int num){
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

Expanded buildKey({required Color colour, required int tempNum}){ //void function doesn't generate output
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colour),
        onPressed: (){
          playSound(tempNum);
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
            children: [
              buildKey(colour: Colors.red, tempNum: 1),
              buildKey(colour: Colors.orange, tempNum: 2),
              buildKey(colour: Colors.yellow, tempNum: 3),
              buildKey(colour: Colors.green, tempNum: 4),
              buildKey(colour: Colors.blue, tempNum: 5),
              buildKey(colour: Colors.teal, tempNum: 6),
              buildKey(colour: Colors.purple, tempNum: 7),
            ]
          ),
        ),
      ),
    );
  }
}
