import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:flutter_picker/flutter_picker.dart';
import 'dart:math';

class MTGScreen extends StatefulWidget {
  State<StatefulWidget> createState() => _MTGScreen();
}

const PickerData = '''[
["1","2","3","4","5"
],
["6","4","8"]
    ]''';

class _MTGScreen extends State<MTGScreen> {
  var playerLife1;
  var playerLife2;
  var gameMode = "1";

  void setMode() {
    setState(() {
      if (gameMode == "2") {
        playerLife1 = 40;
        playerLife2 = 40;
      } else if (gameMode == "3") {
        playerLife1 = 30;
        playerLife2 = 30;
      } else {
        playerLife1 = 20;
        playerLife2 = 20;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MTG"),
        ),
        body: Center(
          child: Column(
            children: [
              Spacer(),
              Row(
                children: [
                  Spacer(),
                  Container(
                      child: Transform(
                          transform: Matrix4.rotationX(pi),
                          alignment: Alignment.center,
                          child: Expanded(
                              child: Align(
                            alignment: FractionalOffset.center,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    playerLife1++;
                                  });
                                },
                                child: Text("+"),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                )),
                          )))),
                  Spacer(),
                  Container(
                      child: Transform(
                          transform: Matrix4.rotationX(pi),
                          alignment: Alignment.center,
                          child: Text(playerLife1.toString()))),
                  Spacer(), //life
                  Container(
                      child: Transform(
                    transform: Matrix4.rotationX(pi),
                    alignment: Alignment.center,
                    child: Expanded(
                        child: Align(
                      alignment: FractionalOffset.center,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              playerLife1--;
                            });
                          },
                          child: Text("-"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                          )),
                    )),
                  )),
                  Spacer()
                ],
              ),
              Spacer(),
              ElevatedButton(
                  onPressed: () {
                    showPicker(context);
                  },
                  child: Text("Settings")),
              ElevatedButton(
                  onPressed: () {
                    setMode();
                  },
                  child: Text(
                      "tempbutton")), //TODO rework tempbutton -> to pickerbutton
              Spacer(),
              Row(
                children: [
                  Expanded(
                      child: Align(
                    alignment: FractionalOffset.center,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            playerLife2++;
                          });
                        },
                        child: Text("+"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        )),
                  )),
                  Text(playerLife2.toString()), //life
                  Expanded(
                      child: Align(
                    alignment: FractionalOffset.center,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            playerLife2--;
                          });
                        },
                        child: Text("-"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        )),
                  )),
                ],
              ),
              Spacer(),
            ],
          ),
        ));
  }

  showPicker(BuildContext context) {
    new Picker(
        adapter: PickerDataAdapter<String>(
            pickerdata: new JsonDecoder().convert(PickerData), isArray: true),
        hideHeader: true,
        title: new Text("Mode"),
        onConfirm: (Picker picker, List value) {
          gameMode = picker.getSelectedValues()[0];
          print(picker.getSelectedValues());
        }).showDialog(context);
  }
}
