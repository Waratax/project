import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class CardsScr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CardsScr();
}

class _CardsScr extends State<CardsScr> {
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
            Spacer(),
            Container(
                alignment: FractionalOffset.center,
                transform: Matrix4.rotationX(pi),
                child: Container(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Transform(
                          transform: Matrix4.rotationY(pi),
                          alignment: FractionalOffset.center,
                          child: Text("sample time")),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      )),
                )),
            Spacer(),
            Container(
                child: Transform(
                    transform: Matrix4.rotationX(pi),
                    alignment: FractionalOffset.center,
                    child: Transform(
                        transform: Matrix4.rotationY(pi),
                        alignment: FractionalOffset.center,
                        child: Text("text")))),
            Spacer(),
            Container(
                child: Align(
              alignment: FractionalOffset.center,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("sample time"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  )),
            )),
            Spacer(),
          ],
        )));
  }
}
