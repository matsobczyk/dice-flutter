import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    );
  }
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
void buttonPress(){
    leftDiceNumber= Random().nextInt(6) + 1;
    rightDiceNumber= Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      buttonPress();
                    });
                  },
                  padding: EdgeInsets.all(0),
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      buttonPress();
                    });
                  },
                  padding: EdgeInsets.all(0),
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              )),
        ],
      ),
    );
  }
}





