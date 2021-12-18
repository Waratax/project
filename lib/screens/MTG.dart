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
                  Spacer(),
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
                  )),
                  Spacer(),
                  Container(
                      child: Transform(
                          transform: Matrix4.rotationX(pi),
                          alignment: Alignment.center,
                          child: Transform(
                              transform: Matrix4.rotationY(pi),
                              alignment: Alignment.center,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(playerLife1.toString()))))),
                  Spacer(),
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
                          )))), //life
                  Spacer()
                ],
              ),
              Spacer(),
              Container(
                child: ElevatedButton(
                  child: Text("settings"),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              insetPadding: EdgeInsets.all(2),
                              title: Text('MODE'),
                              content: Text('pick mode to play'),
                              actions: [
                                Row(children: [
                                  Container(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          playerLife1 = 20;
                                          playerLife2 = 20;
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text("standard"),
                                    ),
                                    padding: EdgeInsets.all(2),
                                  ),
                                  Container(
                                    child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            playerLife1 = 30;
                                            playerLife2 = 30;
                                          });
                                          Navigator.pop(context);
                                        },
                                        child: Text("modern")),
                                    padding: EdgeInsets.all(2),
                                  ),
                                  Container(
                                    child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            playerLife1 = 40;
                                            playerLife2 = 40;
                                          });
                                          Navigator.pop(context);
                                        },
                                        child: Text("commander")),
                                    padding: EdgeInsets.all(2),
                                  ),
                                ])
                              ],
                            ));
                  },
                ),
              ),
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
