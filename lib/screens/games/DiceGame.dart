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
  var diceThrows = [0, 1, 2, 3, 4, 4];
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
    double widthScr = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
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
                      pickedDiceValue = null;
                    },
                    child: Text("Throw dice")),
                Spacer(),
                ElevatedButton(
                    onPressed: () {
                      throwDice(1);
                    },
                    child: Text("end my round")),
                Spacer(),
              ],
            ),

            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: widthScr * 0.4,
                    height: widthScr * 0.4,
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            if (pickedDices[0] == 0) {
                              pickedDices[0] = 1;
                              if (canBeChecked(0) == true) {
                                fItMateColorForEachDiceImSadNow[0] =
                                    Colors.yellow;
                              } else {
                                pickedDices[0] = 0;
                              }
                            } else {
                              pickedDices[0] = 1;
                              fItMateColorForEachDiceImSadNow[0] =
                                  Colors.yellow;
                            }
                          });
                        },
                        child: Image.asset(
                          "assets/graphics/" + diceImgs[diceThrows[0]],
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        color: fItMateColorForEachDiceImSadNow[0]),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: widthScr * 0.4,
                    height: widthScr * 0.4,
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            if (pickedDices[1] == 0) {
                              pickedDices[1] = 1;
                              if (canBeChecked(1) == true) {
                                fItMateColorForEachDiceImSadNow[1] =
                                    Colors.yellow;
                              } else {
                                pickedDices[1] = 0;
                              }
                            } else {
                              pickedDices[1] = 1;
                              fItMateColorForEachDiceImSadNow[1] =
                                  Colors.yellow;
                            }
                          });
                        },
                        child: Image.asset(
                          "assets/graphics/" + diceImgs[diceThrows[1]],
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        color: fItMateColorForEachDiceImSadNow[1]),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: widthScr * 0.4,
                    height: widthScr * 0.4,
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            if (pickedDices[2] == 0) {
                              pickedDices[2] = 1;
                              if (canBeChecked(2) == true) {
                                fItMateColorForEachDiceImSadNow[2] =
                                    Colors.yellow;
                              } else {
                                pickedDices[2] = 0;
                              }
                            } else {
                              pickedDices[2] = 1;
                              fItMateColorForEachDiceImSadNow[2] =
                                  Colors.yellow;
                            }
                          });
                        },
                        child: Image.asset(
                          "assets/graphics/" + diceImgs[diceThrows[2]],
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        color: fItMateColorForEachDiceImSadNow[2]),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: widthScr * 0.4,
                    height: widthScr * 0.4,
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            if (pickedDices[3] == 0) {
                              pickedDices[3] = 1;
                              if (canBeChecked(3) == true) {
                                fItMateColorForEachDiceImSadNow[3] =
                                    Colors.yellow;
                              } else {
                                pickedDices[3] = 0;
                              }
                            } else {
                              pickedDices[3] = 1;
                              fItMateColorForEachDiceImSadNow[3] =
                                  Colors.yellow;
                            }
                          });
                        },
                        child: Image.asset(
                          "assets/graphics/" + diceImgs[diceThrows[3]],
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        color: fItMateColorForEachDiceImSadNow[3]),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: widthScr * 0.4,
                    height: widthScr * 0.4,
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            if (pickedDices[4] == 0) {
                              pickedDices[4] = 1;
                              if (canBeChecked(4) == true) {
                                fItMateColorForEachDiceImSadNow[4] =
                                    Colors.yellow;
                              } else {
                                pickedDices[4] = 0;
                              }
                            } else {
                              pickedDices[4] = 1;
                              fItMateColorForEachDiceImSadNow[4] =
                                  Colors.yellow;
                            }
                          });
                        },
                        child: Image.asset(
                          "assets/graphics/" + diceImgs[diceThrows[4]],
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        color: fItMateColorForEachDiceImSadNow[4]),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: widthScr * 0.4,
                    height: widthScr * 0.4,
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            if (pickedDices[5] == 0) {
                              pickedDices[5] = 1;
                              if (canBeChecked(5) == true) {
                                fItMateColorForEachDiceImSadNow[5] =
                                    Colors.yellow;
                              } else {
                                pickedDices[5] = 0;
                              }
                            } else {
                              pickedDices[5] = 1;
                              fItMateColorForEachDiceImSadNow[5] =
                                  Colors.yellow;
                            }
                          });
                        },
                        child: Image.asset(
                          "assets/graphics/" + diceImgs[diceThrows[5]],
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        color: fItMateColorForEachDiceImSadNow[5]),
                  ),
                ),
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

  bool canBeChecked(n) {
    var counter = 0;
    var temp = 0;
    if (diceThrows[n] == 0 || diceThrows[n] == 4) {
      pickedDiceValue = null;
      return true;
    } else {
      pickedDiceValue = null;
      for (var i = 0; i <= 5; i++) {
        if (diceThrows[n] != 0 || diceThrows[n] != 4) {
          if (diceThrows[i] == diceThrows[n]) {
            counter++;
          }
        }
      }

      if (counter == 3) {
        return true;
      } else if (counter > 3) {
        for (var i = 0; i <= 5; i++) {
          if (pickedDices[i] == 1) {
            if (diceThrows[i] == diceThrows[n]) {
              temp++;
            }
          }
        }
        if (temp > 3) {
          return false;
        } else {
          return true;
        }
      }
      return false;
    }
  }

  void isAlive() {
    setState(() {
      var help = false;
      for (var i = 0; i <= 5; i++) {
        if (pickedDices[i] == 0) {
          if (canBeChecked(i) == true) {
            help = true;
            break;
          }
        }
      }
      if (help == false) {
        throwDice(1);
      }
    });
  }

  checkScore() {
    List tempDiceThrows = diceThrows;
    var counter = 0;
    var help = false;
    tempDiceThrows.sort();
    var scoreD = 0;

    for (var i = 0; i <= 5; i++) {
      if (tempDiceThrows[i] == i) {
        counter++;
      }
      if (counter == 6) {
        fItMateColorForEachDiceImSadNow = [
          Colors.yellow,
          Colors.yellow,
          Colors.yellow,
          Colors.yellow,
          Colors.yellow,
          Colors.yellow,
        ];
        scoreD = 2000;
      }
    }
    counter = 0;
    for (var i = 0; i <= 5; i++) {
      if (diceThrows[i] != diceThrows[0]) {
        help = false;
        break;
      }
    }
    if (help == true) {
      scoreD = 5000;
    }

    for (var i = 0; i <= 5; i++) {
      if (pickedDices[i] == 1) {
        if (diceThrows[i] == 1) {
          counter++;
        }
      }
    }
    if (counter == 3) {
      scoreD += 200;
    }
    counter = 0;

    for (var i = 0; i <= 5; i++) {
      if (pickedDices[i] == 1) {
        if (diceThrows[i] == 2) {
          counter++;
        }
      }
    }
    if (counter == 3) {
      scoreD += 300;
    }
    counter = 0;

    for (var i = 0; i <= 5; i++) {
      if (pickedDices[i] == 1) {
        if (diceThrows[i] == 3) {
          counter++;
        }
      }
    }
    if (counter == 3) {
      scoreD += 400;
    }
    counter = 0;

    for (var i = 0; i <= 5; i++) {
      if (pickedDices[i] == 1) {
        if (diceThrows[i] == 4) {
          counter++;
        }
      }
    }
    if (counter == 3) {
      scoreD += 500;
    }
    counter = 0;

    for (var i = 0; i <= 5; i++) {
      if (pickedDices[i] == 1) {
        if (diceThrows[i] == 5) {
          counter++;
        }
      }
    }
    if (counter == 3) {
      scoreD += 600;
    }
    counter = 0;
    for (var i = 0; i <= 5; i++) {
      if (pickedDices[i] == 1) {
        if (diceThrows[i] == 0) {
          counter++;
        }
      }
    }
    if (counter == 3) {
      scoreD += 1000;
    }
    counter = 0;

    for (var i = 0; i <= 5; i++) {
      if (pickedDices[i] == 1) {
        if (diceThrows[i] == 0) {
          scoreD += 100;
        }
      }

      for (var i = 0; i <= 5; i++) {
        if (pickedDices[i] == 1) {
          if (diceThrows[i] == 4) {
            scoreD += 50;
          }
        }
      }
      return scoreD;
    }
  }
}
//it all just works