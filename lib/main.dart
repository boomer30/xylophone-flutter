import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              NoteKey(noteNum: 1, buttonColor: Colors.red),
              NoteKey(noteNum: 2, buttonColor: Colors.orange),
              NoteKey(noteNum: 3, buttonColor: Colors.yellow),
              NoteKey(noteNum: 4, buttonColor: Colors.green),
              NoteKey(noteNum: 5, buttonColor: Colors.teal),
              NoteKey(noteNum: 6, buttonColor: Colors.blue),
              NoteKey(noteNum: 7, buttonColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class NoteKey extends StatelessWidget {
  final int noteNum;
  final Color buttonColor;
  NoteKey({Key? key, required this.noteNum, required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(Size(150, 30)),
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          enableFeedback: false),
      onPressed: () {
        final player = AudioCache();
        player.play('note$noteNum.wav');
      },
      child: Text(''),
    );
  }
}
