import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            "Dicee",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void changeNumberDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeNumberDice();
                },
                child: Image.asset("images/dice$leftDiceNumber.png")),
          ),
          Expanded(
            child: TextButton(
                style:
                    TextButton.styleFrom(backgroundColor: Colors.transparent),
                onPressed: () {
                  changeNumberDice();
                },
                child: Image.asset("images/dice$rightDiceNumber.png")),
          ),
        ],
      ),
    );
  }
}
