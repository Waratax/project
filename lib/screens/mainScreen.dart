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
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/MTG"); //magic the gathering
                  },
                  child: Text("Play MTG"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/diceRoll"); //dice rolls
                  },
                  child: Text("Play DiceRoll"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/diceGame"); //dice the game
                  },
                  child: Text("Play dice the game"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, "/liarsDice"); //liars dice the dice game #2
                  },
                  child: Text("Play liars dice"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/cards"); //card game for sure
                  },
                  child: Text("Play cards"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  )),
            ),
          ],
        )));
  }
}
