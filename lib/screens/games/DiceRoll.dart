import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:projekt/screens/log/users.dart' as globals;

class DiceScr extends StatefulWidget {
  const DiceScr({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DiceScreen();
}

const PickerData = '''[
[1,2,3,4,5,6,7,8,9
],
[6,4,8,10,12,20]
    ]''';

class _DiceScreen extends State<DiceScr> {
  var rollValue;
  List rollValues = [];
  List diceValue = ["1", "6"];

  void toggleRoll() {
    int temp = 0;
    int sadface = 0;
    for (var i = 0; i < int.parse(diceValue[0]); i++) {
      temp = Random().nextInt(int.parse(diceValue[1])) + 1;
      sadface += temp;
      setState(() {
        rollValues.add(temp);
        rollValues.sort();
        rollValue = sadface;
        globals.rollValue = rollValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GAMES"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Align(
                      alignment: FractionalOffset.topCenter,
                      child: Text("Choose your dice"))),
              ElevatedButton(
                child: Text("dice value"),
                onPressed: () {
                  showPickerArray(context);
                },
              ),
              Expanded(child: Text("$rollValue" + " " + "$rollValues")),
              ElevatedButton(
                  onPressed: () {
                    rollValues = [];
                    toggleRoll();
                  },
                  child: Text('roll your dice')),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Done"),
              ),
              Spacer(),
            ],
          ),
        ));
  }

  showPickerArray(BuildContext context) {
    new Picker(
        adapter: PickerDataAdapter<String>(
            pickerdata: new JsonDecoder().convert(PickerData), isArray: true),
        hideHeader: true,
        title: new Text("Please select number of throws and a dice"),
        delimiter: [
          PickerDelimiter(
              child: Container(
            width: 30.0,
            alignment: Alignment.center,
            child: Text("D"),
          ))
        ],
        onConfirm: (Picker picker, List value) {
          diceValue = picker.getSelectedValues();
          print(picker.getSelectedValues());
        }).showDialog(context);
  }
}
