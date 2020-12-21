import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice App!'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void changeDiceNumber() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () => changeDiceNumber(),
                child: Image.asset('images/dice$leftDiceNum.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () => changeDiceNumber(),
                child: Image.asset('images/dice$rightDiceNum.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
