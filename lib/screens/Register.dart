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
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'email'),
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'nickname'),
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'password'),
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'password again'),
              ),
              ElevatedButton(
                  onPressed: () {}, child: Text("done")) //TODO work here
            ],
          ),
        ));
  }
}
