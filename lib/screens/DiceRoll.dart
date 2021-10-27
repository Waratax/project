import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MTGScreen extends StatefulWidget {
  State<StatefulWidget> createState() => _MTGScreen();
}

class _MTGScreen extends State<MTGScreen> {
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
                      child: Text("nigga"))),
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
