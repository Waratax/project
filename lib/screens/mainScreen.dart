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
          automaticallyImplyLeading: false,
          title: Text("GAMES"),
        ),
        body: Center(
            child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/MTG"); //magic the gathering
                },
                child: Text("Play MTG"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/diceRoll"); //dice rolls
                },
                child: Text("Play DiceRoll"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                )),
          ],
        )));
  }
}
