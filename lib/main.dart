import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Xylo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  final player = AudioCache();
  var counter = 0;

  Future<void> _playSound(int num) async {
    await player.play('note$num.wav');
    counter++;
    if (Random().nextInt(7) == num) await player.play('dimon.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: MaterialButton(
                color: Colors.red,
                enableFeedback: false,
                onPressed: () => _playSound(1),
                child: Container(),
              ),
            ),
            Expanded(
              child: MaterialButton(
                color: Colors.blue,
                enableFeedback: false,
                onPressed: () => _playSound(2),
                child: Container(),
              ),
            ),
            Expanded(
              child: MaterialButton(
                color: Colors.green,
                enableFeedback: false,
                onPressed: () => _playSound(3),
                child: Container(),
              ),
            ),
            Expanded(
              child: MaterialButton(
                color: Colors.yellow,
                enableFeedback: false,
                onPressed: () => _playSound(4),
                child: Container(),
              ),
            ),
            Expanded(
              child: MaterialButton(
                color: Colors.cyan,
                enableFeedback: false,
                onPressed: () => _playSound(5),
                child: Container(),
              ),
            ),
            Expanded(
              child: MaterialButton(
                color: Colors.pink,
                enableFeedback: false,
                onPressed: () => _playSound(6),
                child: Container(),
              ),
            ),
            Expanded(
              child: MaterialButton(
                color: Colors.purple,
                enableFeedback: false,
                onPressed: () => _playSound(7),
                child: Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
