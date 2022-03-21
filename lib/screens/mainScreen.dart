import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen();

  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double widthScr = MediaQuery.of(context).size.width;
    double heightScr = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("GAMES"),
        ),
        body: Center(
            child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: widthScr * 0.5,
                  height: widthScr * 0.5,
                  padding: EdgeInsets.all(16),
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
                Container(
                  width: widthScr * 0.5,
                  height: widthScr * 0.5,
                  padding: EdgeInsets.all(16),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/diceRoll"); //dice rolls
                      },
                      child: Text("Roll dice"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent.shade200,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: widthScr * 0.5,
                  height: widthScr * 0.5,
                  padding: EdgeInsets.all(16),
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
                Container(
                  width: widthScr * 0.5,
                  height: widthScr * 0.5,
                  padding: EdgeInsets.all(16),
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
              ],
            ),
            Container(
              width: widthScr * 0.5,
              height: widthScr * 0.5,
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/cards"); //card game for sure
                  },
                  child: Text("Chess timer"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent.shade200,
                  )),
            ),
          ],
        )));
  }
}
