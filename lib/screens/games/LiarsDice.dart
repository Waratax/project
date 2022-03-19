import 'dart:ffi';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:projekt/screens/games/DiceRoll.dart';

class LiarsDiceScr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LiarsDiceScr();
}

class _LiarsDiceScr extends State<LiarsDiceScr> {
  var numOfFields;
  final _controller = TextEditingController();
  List position = [
    "Start",
    "Start",
    "Start",
    "Start",
    "Start",
  ];
  List laps = [0, 0, 0, 0, 0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GAMES"),
        ),
        body: Center(
            child: Column(
          children: [
            Container(
                child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                            insetPadding: EdgeInsets.all(2),
                            title: Text("pocet poli"),
                            actions: [
                              TextFormField(
                                controller: _controller,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                ],
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'pocet poli na desce'),
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("cancel")),
                                  Spacer(),
                                  ElevatedButton(
                                      onPressed: () {
                                        numOfFields =
                                            int.parse(_controller.text);
                                        Navigator.pop(context);
                                      },
                                      child: Text("done")),
                                ],
                              )
                            ]));
              },
              child: Text("zadej pocet policek na hraci desce"),
            )),
            Container(
                child: Text("pole: " +
                    position[0].toString() +
                    " kolo: " +
                    laps[0].toString())),
            Row(
              children: [
                Container(
                    child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    "assets/black.png",
                    height: 25,
                    width: 25,
                  ),
                )),
                Container(
                  child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'nickname')),
                  width: 150,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      getNumberOfFieldsForMove(0);
                    },
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Container(
                child: Text("pole: " +
                    position[1].toString() +
                    " kolo: " +
                    laps[1].toString())),
            Row(
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Image.asset(
                      "assets/blue.png",
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
                Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'nickname'),
                  ),
                  width: 150,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      getNumberOfFieldsForMove(1);
                    },
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Container(
                child: Text("pole: " +
                    position[2].toString() +
                    " kolo: " +
                    laps[2].toString())),
            Row(
              children: [
                Container(
                    child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    "assets/green.png",
                    height: 25,
                    width: 25,
                  ),
                )),
                Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'nickname'),
                  ),
                  width: 150,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      getNumberOfFieldsForMove(2);
                    },
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Container(
                child: Text("pole: " +
                    position[3].toString() +
                    " kolo: " +
                    laps[3].toString())),
            Row(
              children: [
                Container(
                    child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    "assets/red.png",
                    height: 25,
                    width: 25,
                  ),
                )),
                Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'nickname'),
                  ),
                  width: 150,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      getNumberOfFieldsForMove(3);
                    },
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Container(
                child: Text("pole: " +
                    position[4].toString() +
                    " kolo: " +
                    laps[4].toString())),
            Row(
              children: [
                Container(
                    child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    "assets/yellow.png",
                    height: 25,
                    width: 25,
                  ),
                )),
                Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'nickname'),
                  ),
                  width: 150,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      getNumberOfFieldsForMove(4);
                    },
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            )
          ],
        )));
  }

  void getNumberOfFieldsForMove(playerNum) {
    var numberOfFieldsForMove;
    final _controller = TextEditingController();
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
                insetPadding: EdgeInsets.all(2),
                title: Text("posun me"),
                actions: [
                  Row(
                    children: [
                      Container(
                        width: 250,
                        child: TextFormField(
                          controller: _controller,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'o kolik se posunes'),
                        ),
                      ),
                      Spacer(),
                      Container(
                          child: FlatButton(
                              child: Image.asset(
                                "assets/dice.png",
                                height: 25,
                                width: 25,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/diceRoll');
                              })),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("cancel")),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              numberOfFieldsForMove =
                                  int.parse(_controller.text);
                            });

                            Navigator.pop(context);
                            move(playerNum, numberOfFieldsForMove);
                          },
                          child: Text("done")),
                    ],
                  )
                ]));
  }

  move(playerNum, numberOfFieldsForMove) {
    if (position[playerNum] == "Start") {
      position[playerNum] = 0;
    }
    setState(() {
      position[playerNum] += numberOfFieldsForMove;
    });
    if (position[playerNum] == numOfFields) {
      setState(() {
        position[playerNum] = "Start";
        laps[playerNum] += 1;
      });
    }
    if (position[playerNum] > numOfFields) {
      setState(() {
        position[playerNum] -= numOfFields;
        laps[playerNum] += 1;
      });
    }
  }
}
