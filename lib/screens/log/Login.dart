import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projekt/screens/log/users.dart' as globals;

class LoginScr extends StatefulWidget {
  State<StatefulWidget> createState() => _LoginScr();
}

class _LoginScr extends State<LoginScr> {
  final nameControll = TextEditingController();
  final passwordControll = TextEditingController();
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
                  controller: nameControll,
                ),
              )),
              Container(
                  child: Align(
                alignment: FractionalOffset.center,
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a password'),
                  controller: passwordControll,
                ),
              )),
              ElevatedButton(
                  onPressed: () {
                    try {
                      for (int i = 0; i < globals.users.length; i++) {
                        if (globals.users[i][0].toString() ==
                                nameControll.text &&
                            globals.users[i][1].toString() ==
                                passwordControll.text) {
                          Navigator.pushNamed(context, "/mainScreen");
                        } else {
                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                    content: Text("wrong inputs"),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("ok"))
                                    ],
                                  ));
                        }
                      }
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
