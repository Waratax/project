import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LiarsDiceScr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LiarsDiceScr();
}

class _LiarsDiceScr extends State<LiarsDiceScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("GAMES"),
        ),
        body: Center(
            child: Column(
          children: [
            Container(
                child: ElevatedButton(
              onPressed: () {},
              child: Text("zadej pocet policek na hraci desce"),
            )),
            Row(
              children: [
                Container(
                    child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    "assets/black.png",
                    height: 25,
                    width: 25,
                  ),
                )),
                Container(
                  child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'nickname')),
                  width: 150,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Image.asset(
                      "assets/blue.png",
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
                Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'nickname'),
                  ),
                  width: 150,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Container(
                    child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    "assets/green.png",
                    height: 25,
                    width: 25,
                  ),
                )),
                Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'nickname'),
                  ),
                  width: 150,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Container(
                    child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    "assets/red.png",
                    height: 25,
                    width: 25,
                  ),
                )),
                Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'nickname'),
                  ),
                  width: 150,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Container(
                    child: FlatButton(
                  onPressed: () {},
                  child: Image.asset(
                    "assets/yellow.png",
                    height: 25,
                    width: 25,
                  ),
                )),
                Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'nickname'),
                  ),
                  width: 150,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Posun"),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ],
            )
          ],
        )));
  }
}
