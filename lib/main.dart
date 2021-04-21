import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  
  //play sound function
  void playSound(int count) {
    final player = AudioCache();
    player.play('note$count.wav');

  }


  
  //piano press
  Expanded singlePianioKey(soundCount,color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundCount);
        },
        style:  TextButton.styleFrom(
          backgroundColor: color
        ),
        child: Text(''),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              singlePianioKey(1,Colors.yellow),
              singlePianioKey(2, Colors.green),
              singlePianioKey(3, Colors.pink),
              singlePianioKey(4, Colors.lightBlue),
              singlePianioKey(5, Colors.amber),
              singlePianioKey(6, Colors.purple),
              singlePianioKey(7, Colors.teal[100]),
            ],
          )
          // child: Center(child: TextButton(
          //   onPressed: () {
          //     final player = AudioCache();
          //     player.play('note1.wav');
          //   },
          //   child: Text('click me'),
          // )),
        ),
      ),
    );
  }
}
