import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LiarsDiceScr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LiarsDiceScr();
}

class _LiarsDiceScr extends State<LiarsDiceScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("GAMES"),
        ),
        body: Center(
            child: Column(
          children: [Text("LiarsDiceGame")],
        )));
  }
}
