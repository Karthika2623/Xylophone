import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
void music(int sound){
  final player = AudioPlayer();
  player.play(AssetSource('note$sound.wav'));
}
Expanded buildKey({Color? Color,  sound}) {
 return Expanded(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Color),
      onPressed: () {
        music(sound);
      },
      child: null,
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
            children: <Widget>[
              buildKey(Color:Colors.blue,sound:1),
              buildKey(Color:Colors.red,sound:2),
              buildKey(Color:Colors.green,sound:3),
              buildKey(Color:Colors.pink,sound:4),
              buildKey(Color:Colors.yellow,sound:5),
              buildKey(Color:Colors.purple,sound:6),
              ],
          ),
          ),
        ),
      );
  }
}
