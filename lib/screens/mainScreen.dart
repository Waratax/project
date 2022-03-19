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
            Spacer(),
            Row(
              children: [
                Spacer(),
                Container(
                  width: 150,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, "/MTG"); //magic the gathering
                      },
                      child: Text("MTG Life counter"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent.shade200,
                      )),
                ),
                Spacer(),
                Container(
                  width: 150,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/diceRoll"); //dice rolls
                      },
                      child: Text("Roll dice"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent.shade200,
                      )),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Container(
                  width: 150,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, "/diceGame"); //dice the game
                      },
                      child: Text("Play dice game"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent.shade200,
                      )),
                ),
                Spacer(),
                Container(
                  width: 150,
                  height: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context,
                            "/liarsDice"); //liars dice the dice game #2
                      },
                      child: Text("Board game"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent.shade200,
                      )),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Container(
              width: 150,
              height: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/cards"); //card game for sure
                  },
                  child: Text("Chess timer"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent.shade200,
                  )),
            ),
            Spacer(),
          ],
        )));
  }
}
