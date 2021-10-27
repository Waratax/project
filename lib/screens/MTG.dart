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
          title: Text("MTG"),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Správně"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        )),
                  )),
                  Expanded(
                      child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Špatně"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        )),
                  )),
                ],
              ),

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
