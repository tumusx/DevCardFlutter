import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: const MagicBallApp(),
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "Ask me Anything",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

class MagicBallApp extends StatefulWidget {
  const MagicBallApp({Key? key}) : super(key: key);

  @override
  State<MagicBallApp> createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {
  var image = imageListBall().first;
  final styleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      minimumSize: const Size(50, 40));

  void changeImageState() {
    setState(() {
      image = imageListBall()[Random().nextInt(imageListBall().length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image.asset(image),
          ),
          const SizedBox(width: 20, height: 30),
          Expanded(
            child: ElevatedButton(
              style: styleButton,
              onPressed: () {
                changeImageState();
              },
              child: const Text("Change image"),
            ),
          ),
          const SizedBox(width: 20, height: 30),
        ],
      ),
    );
  }
}

List<String> imageListBall() {
  return <String>[
    "images/img_1.png",
    "images/img_2.png",
    "images/img_3.png",
    "images/img_4.png",
    "images/img_5.png"
  ];
}
