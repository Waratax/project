import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';

class DiceGameScr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiceGameScr();
}

class _DiceGameScr extends State<DiceGameScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("GAMES"),
        ),
        body: Center(
            child: Column(
          children: [Text("DiceGame")],
        )));
  }
}
