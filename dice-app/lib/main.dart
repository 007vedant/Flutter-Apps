import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text('Dice App'),
          backgroundColor: Colors.blue[400],
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftD = 1, rightD = 1;
  var random = new Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftD = random.nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftD.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightD = random.nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightD.png'),
            ),
          ),
        ],
      ),
    );
  }
}
