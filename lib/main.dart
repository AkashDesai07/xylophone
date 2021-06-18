import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(Xylophone());


class Xylophone extends StatelessWidget {

  void playSound(int soundNumber){
    final player=AudioCache();
    player.play('note$soundNumber.wav');

  }

  Expanded buildkey({Color color, int soundNumber ,Text text}){
    return Expanded(
      child: FlatButton(
        color:color,
        onPressed: (){
          playSound(soundNumber);
        },
        child: text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color:Colors.red, soundNumber:1, text:Text('ak')),
              buildkey(color:Colors.blue, soundNumber:2, text:Text('akash')),
              buildkey(color:Colors.green, soundNumber:3),
              buildkey(color:Colors.brown, soundNumber:4),
              buildkey(color:Colors.pink, soundNumber:5),
              buildkey(color:Colors.deepOrange, soundNumber:6),
              buildkey(color:Colors.yellow, soundNumber:7),

            ],
          )
          ),
        ),

    );
  }
}
