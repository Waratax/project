import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiceScreen extends StatefulWidget {
  State<StatefulWidget> createState() => _DiceScreen();
}

class _DiceScreen extends State<DiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dice roll"),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: Align(
                      alignment: FractionalOffset.topCenter,
                      child: Text("sampleText"))),
              Spacer(),

              //End game
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("UKONČIT HRU")),
            ],
          ),
        ));
  }
}
