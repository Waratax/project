import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScr extends StatefulWidget {
  State<StatefulWidget> createState() => _LoginScr();
}

class _LoginScr extends State<LoginScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                  child: Align(
                alignment: FractionalOffset.center,
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a nickname'),
                ),
              )),
              Container(
                  child: Align(
                alignment: FractionalOffset.center,
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a password'),
                ),
              )),
              ElevatedButton(
                  onPressed: () {
                    try {
                      //TODO find user + password check
                      Navigator.pushNamed(context, "/mainScreen");
                    } on Exception {}
                  },
                  child: Text("login")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/register");
                  },
                  child: Text("register")),
            ],
          ),
        ));
  }
}
