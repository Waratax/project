import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScr extends StatefulWidget {
  State<StatefulWidget> createState() => _RegisterScr();
}

class _RegisterScr extends State<RegisterScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Username"),
              Text("E-mail"),
              Text("password"),
              Text("again password")
            ],
          ),
        ));
  }
}
