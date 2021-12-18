import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class MTGScreen extends StatefulWidget {
  State<StatefulWidget> createState() => _MTGScreen();
}

class _MTGScreen extends State<MTGScreen> {
  var playerLife1 = 20;
  var playerLife2 = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MTG"),
        ),
        body: Center(
          child: Column(
            children: [
              Spacer(),
              Row(
                children: [
                  Container(
                      child: Transform(
                          transform: Matrix4.rotationX(pi),
                          alignment: Alignment.center,
                          child: Expanded(
                              child: Align(
                            alignment: FractionalOffset.center,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    playerLife1++;
                                  });
                                },
                                child: Text("+"),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                )),
                          )))),
                  Container(
                      child: Transform(
                          transform: Matrix4.rotationX(pi),
                          alignment: Alignment.center,
                          child: Text(playerLife1.toString()))), //life
                  Container(
                      child: Transform(
                    transform: Matrix4.rotationX(pi),
                    alignment: Alignment.center,
                    child: Expanded(
                        child: Align(
                      alignment: FractionalOffset.center,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              playerLife1--;
                            });
                          },
                          child: Text("-"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          )),
                    )),
                  ))
                ],
              ),
              Spacer(),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); //TODO modes
                  },
                  child: Text("Settings")),
              Spacer(),
              Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: FractionalOffset.center,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            playerLife2++;
                          });
                        },
                        child: Text("+"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        )),
                  )),
                  Text(playerLife2.toString()), //life
                  Expanded(
                      child: Align(
                    alignment: FractionalOffset.center,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            playerLife2--;
                          });
                        },
                        child: Text("-"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        )),
                  )),
                ],
              ),
              Spacer(),
            ],
          ),
        ));
  }
}
