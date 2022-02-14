import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projekt/screens/log/users.dart' as globals;

class RegisterScr extends StatefulWidget {
  State<StatefulWidget> createState() => _RegisterScr();
}

class _RegisterScr extends State<RegisterScr> {
  final mailControll = TextEditingController();
  final nameControll = TextEditingController();
  final passwordControll = TextEditingController();
  final passwordControll2 = TextEditingController();
  List user = [];
  bool nameIsUsed = true;
  bool mailIsUsed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Center(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'email'),
                controller: mailControll,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'nickname'),
                controller: nameControll,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'password'),
                  controller: passwordControll),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'password again'),
                controller: passwordControll2,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/mainScreen");

                    for (int i = 0; i < globals.users.length; i++) {
                      if (globals.users[i][0] != nameControll) {
                        nameIsUsed = false;
                      }
                      if (globals.users[i][2] != mailControll) {
                        mailIsUsed = false;
                      }
                    } //TODO nameIsUsed and mailIsUsed is broken?
                    if (passwordControll.text == passwordControll2.text &&
                        nameIsUsed == false &&
                        mailIsUsed == false)
                    //&&
                    //mailControll.text.contains(RegExp(
                    //r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
                    {
                      user.add(nameControll.text);
                      user.add(passwordControll.text);
                      user.add(mailControll.text);
                      globals.users.add(user);
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
                  },
                  child: Text("done"))
            ],
          ),
        ));
  }
}
