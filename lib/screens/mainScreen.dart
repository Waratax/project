import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen();

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GAMES"),
        ),
        body: Center(
            child: Column(
          children: [
            Expanded(
                child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/MTG"); //magic the gathering
                  },
                  child: Text("Play MTG"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  )),
            )),
            Expanded(
                child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/DiceRoll"); //dice rolls
                  },
                  child: Text("Play MTG"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  )),
            )),
          ],
        )));
  }
}
