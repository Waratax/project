import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  var score = 0;
  bool firstRound = true;
  var pickedDiceValue;
  var diceThrows = [0, 1, 2, 3, 4, 5];
  var pickedDices = [0, 0, 0, 0, 0, 0];
  var fItMateColorForEachDiceImSadNow = [
    Colors.grey.shade100,
    Colors.grey.shade100,
    Colors.grey.shade100,
    Colors.grey.shade100,
    Colors.grey.shade100,
    Colors.grey.shade100
  ];
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
            Text("score " + checkScore().toString()),
            Row(
              children: [
                Spacer(),
                ElevatedButton(
                    onPressed: () {
                      throwDice(0);
                      firstRound = false;
                      isAlive();
                      checkScore();
                    },
                    child: Text("Throw dice")),
                Spacer(),
                ElevatedButton(
                    onPressed: () {
                      countScore();
                      throwDice(1);
                    },
                    child: Text("end my round")),
                Spacer(),
              ],
            ),

            Row(
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      setState(() {
                        if (pickedDices[0] == 0) {
                          pickedDices[0] = 1;
                          if (canBeChecked() == true) {
                            fItMateColorForEachDiceImSadNow[0] = Colors.yellow;
                          } else {
                            pickedDices[0] = 0;
                            pickedDiceValue = null;
                          }
                        } else {
                          pickedDices[0] = 1;
                          fItMateColorForEachDiceImSadNow[0] = Colors.yellow;
                        }
                      });
                    },
                    child: Image.asset(
                      "assets/graphics/" + diceImgs[diceThrows[0]],
                      height: 150,
                      width: 150,
                    ),
                    color: fItMateColorForEachDiceImSadNow[0]),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        if (pickedDices[1] == 0) {
                          pickedDices[1] = 1;
                          if (canBeChecked() == true) {
                            fItMateColorForEachDiceImSadNow[1] = Colors.yellow;
                          } else {
                            pickedDices[1] = 0;
                            pickedDiceValue = null;
                          }
                        } else {
                          pickedDices[1] = 1;
                          fItMateColorForEachDiceImSadNow[1] = Colors.yellow;
                        }
                      });
                    },
                    child: Image.asset(
                      "assets/graphics/" + diceImgs[diceThrows[1]],
                      height: 150,
                      width: 150,
                    ),
                    color: fItMateColorForEachDiceImSadNow[1]),
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      setState(() {
                        if (pickedDices[2] == 0) {
                          pickedDices[2] = 1;
                          if (canBeChecked() == true) {
                            fItMateColorForEachDiceImSadNow[2] = Colors.yellow;
                          } else {
                            pickedDices[2] = 0;
                            pickedDiceValue = null;
                          }
                        } else {
                          pickedDices[2] = 1;
                          fItMateColorForEachDiceImSadNow[2] = Colors.yellow;
                        }
                      });
                    },
                    child: Image.asset(
                      "assets/graphics/" + diceImgs[diceThrows[2]],
                      height: 150,
                      width: 150,
                    ),
                    color: fItMateColorForEachDiceImSadNow[2]),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        if (pickedDices[3] == 0) {
                          pickedDices[3] = 1;
                          if (canBeChecked() == true) {
                            fItMateColorForEachDiceImSadNow[3] = Colors.yellow;
                          } else {
                            pickedDices[3] = 0;
                            pickedDiceValue = null;
                          }
                        } else {
                          pickedDices[3] = 1;
                          fItMateColorForEachDiceImSadNow[3] = Colors.yellow;
                        }
                      });
                    },
                    child: Image.asset(
                      "assets/graphics/" + diceImgs[diceThrows[3]],
                      height: 150,
                      width: 150,
                    ),
                    color: fItMateColorForEachDiceImSadNow[3]),
              ],
            ),
            Row(
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      setState(() {
                        if (pickedDices[4] == 0) {
                          pickedDices[4] = 1;
                          if (canBeChecked() == true) {
                            fItMateColorForEachDiceImSadNow[4] = Colors.yellow;
                          } else {
                            pickedDices[4] = 0;
                            pickedDiceValue = null;
                          }
                        } else {
                          pickedDices[4] = 1;
                          fItMateColorForEachDiceImSadNow[4] = Colors.yellow;
                        }
                      });
                    },
                    child: Image.asset(
                      "assets/graphics/" + diceImgs[diceThrows[4]],
                      height: 150,
                      width: 150,
                    ),
                    color: fItMateColorForEachDiceImSadNow[4]),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        if (pickedDices[5] == 0) {
                          pickedDices[5] = 1;
                          if (canBeChecked() == true) {
                            fItMateColorForEachDiceImSadNow[5] = Colors.yellow;
                          } else {
                            pickedDices[5] = 0;
                            pickedDiceValue = null;
                          }
                        } else {
                          pickedDices[5] = 1;
                          fItMateColorForEachDiceImSadNow[5] = Colors.yellow;
                        }
                      });
                    },
                    child: Image.asset(
                      "assets/graphics/" + diceImgs[diceThrows[5]],
                      height: 150,
                      width: 150,
                    ),
                    color: fItMateColorForEachDiceImSadNow[5]),
              ],
            ),
            //Text(dicevalues),
          ],
        )));
  }

  void throwDice(n) {
    setState(() {
      if (n == 0) {
        for (int i = 0; i <= 5; i++) {
          if (pickedDices[i] == 0) {
            diceThrows[i] = Random().nextInt(6);
          }
        }
      }
      if (n == 1) {
        for (int i = 0; i <= 5; i++) {
          diceThrows[i] = Random().nextInt(6);
          pickedDiceValue = null;
          pickedDices = [0, 0, 0, 0, 0, 0];
          fItMateColorForEachDiceImSadNow = [
            Colors.grey.shade100,
            Colors.grey.shade100,
            Colors.grey.shade100,
            Colors.grey.shade100,
            Colors.grey.shade100,
            Colors.grey.shade100
          ];
        }
      }
    });
  }

  bool canBeChecked() {
    if (firstRound == true) {
      var counter = 0;
      var temp;
      if (pickedDiceValue == null) {
        for (var i = 0; i <= 5; i++) {
          if (pickedDices[i] == 1) {
            temp = i;
            break;
          }
        }
        pickedDiceValue = diceThrows[temp];
        for (var i = 0; i <= 5; i++) {
          if (diceThrows[i] == pickedDiceValue) {
            counter++;
          }
        }
        if (counter >= 3) {
          return true;
        }
        return false;
      }

      for (var i = 0; i <= 5; i++) {
        if (pickedDices[i] == 1) {
          if (diceThrows[i] != pickedDiceValue) {
            return false;
          }
        }
      }
      return true;
    }
    return false;
  }

  void isAlive() {
    setState(() {
      firstRound = false;
      var temp = 0;
      var nOfD = 0;
      for (var i = 0; i <= 5; i++) {
        if (pickedDices[i] == 1) {
          nOfD++;
        }
      }
      for (var i = 0; i <= 5; i++) {
        if (diceThrows[i] == pickedDiceValue) {
          pickedDices[i] = 1;
          fItMateColorForEachDiceImSadNow[i] = Colors.yellow;
          temp++;
        }
      }
      if (nOfD == temp) {
        pickedDiceValue = null;
        firstRound = true;
        score++;

        for (var i = 0; i <= 5; i++) {
          pickedDices[i] = 0;
          fItMateColorForEachDiceImSadNow[i] = Colors.grey.shade100;
        }
      }
    });
  }

  checkScore() {
    var scoreD = 0;
    for (var i = 0; i <= 5; i++) {
      if (pickedDices[i] == 1) {
        scoreD += (diceThrows[i] + 1) * 10;
      }
    }
    return scoreD;
  }

  void countScore() {
    setState(() {
      score = -1;
    });
  }
}
