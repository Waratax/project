import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

class LiarsDiceScr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LiarsDiceScr();
}

class _LiarsDiceScr extends State<LiarsDiceScr> {
  int numOfFields = 40;
  List position = [
    "Start",
    "Start",
    "Start",
    "Start",
    "Start",
  ];
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
                var _controller;
                showDialog(
                    context: context,
                    builder: (_) => TextFormField(
                          controller: _controller,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                        ));
                numOfFields = _controller;
              },
              child: Text("zadej pocet policek na hraci desce"),
            )),
            Row(
              children: [
                Container(child: Text(position[0])),
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
                      move(0, getNumberOfFieldsForMove());
                    },
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Container(child: Text(position[1])),
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
                      move(1, getNumberOfFieldsForMove());
                    },
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Container(child: Text(position[2])),
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
                      move(2, getNumberOfFieldsForMove());
                    },
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Container(child: Text(position[3])),
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
                      move(3, getNumberOfFieldsForMove());
                    },
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Container(child: Text(position[4])),
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
                      move(4, getNumberOfFieldsForMove());
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

  getNumberOfFieldsForMove() {
    var _controller;
    showDialog(
        context: context,
        builder: (_) => TextFormField(
              controller: _controller,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
            ));

    return _controller;
  }

  move(playerNum, moveByNumOfFields) {
    if (position[playerNum] == "Start") {
      position[playerNum] = 0;
    }
    position[playerNum] += moveByNumOfFields;
  }
}
