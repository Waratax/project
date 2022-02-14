import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class DiceGameScr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiceGameScr();
}

class _DiceGameScr extends State<DiceGameScr> {
  var diceImgs = [
    "img1.png",
    "img2.png",
    "img3.png",
    "img4.png",
    "img5.png",
    "img6.png"
  ];
  var diceThrows = [0, 1, 2, 3, 4, 5];
  var str;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("GAMES"),
        ),
        body: Center(
            child: Column(
          children: [
            Text("DiceGame"),
            ElevatedButton(
                onPressed: () {
                  diceThrows = [];
                  setState(() {
                    for (int i = 0; i <= 6; i++) {
                      diceThrows.add(Random().nextInt(6));
                    }
                  });
                },
                child: Text("text")),
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/graphics/" + diceImgs[diceThrows[0]],
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  "assets/graphics/" + diceImgs[diceThrows[1]],
                  height: 150,
                  width: 150,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/graphics/" + diceImgs[diceThrows[2]],
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  "assets/graphics/" + diceImgs[diceThrows[3]],
                  height: 150,
                  width: 150,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/graphics/" + diceImgs[diceThrows[4]],
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  "assets/graphics/" + diceImgs[diceThrows[5]],
                  height: 150,
                  width: 150,
                )
              ],
            ),
          ],
        )));
  }
}
