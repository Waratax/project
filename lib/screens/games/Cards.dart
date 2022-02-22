import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          children: [Text("chess clock")],
        )));
  }
}
