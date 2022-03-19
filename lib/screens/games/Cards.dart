import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class CardsScr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CardsScr();
}

class _CardsScr extends State<CardsScr> {
  var secondsW = 900; //15min
  var secondsB = 900; //15min
  var incr = 2; //sec
  Timer? timerWhite;
  Timer? timerBlack;
  var colorW = Colors.grey.shade800;
  var colorB = Colors.grey.shade800;

  void startTimerWhite() {
    timerWhite = Timer.periodic(Duration(seconds: 1), (timer) {
      if (secondsW > 0) {
        setState(() {
          secondsW--;
          colorB = Colors.grey.shade500;
          colorW = Colors.grey.shade700;
        });
      }
    });
  }

  void startTimerBlack() {
    timerBlack = Timer.periodic(Duration(seconds: 1), (timer) {
      if (secondsB > 0) {
        setState(() {
          secondsB--;
          colorW = Colors.grey.shade500;
          colorB = Colors.grey.shade700;
        });
      }
    });
  }

  void stopBlack() {
    secondsB += incr;
    bool isRunning = timerBlack == null ? false : timerBlack!.isActive;
    if (isRunning == true) {
      timerBlack?.cancel();
    }
  }

  void stopWhiteTimer() {
    secondsW += incr;
    bool isRunning = timerWhite == null ? false : timerWhite!.isActive;
    if (isRunning == true) {
      timerWhite?.cancel();
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
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      bool isRunning =
                          timerBlack == null ? false : timerBlack!.isActive;
                      if (isRunning == true) {
                        stopBlack();
                        startTimerWhite();
                      } else {}
                    },
                    child: Transform(
                      transform: Matrix4.rotationZ(pi),
                      alignment: FractionalOffset.center,
                      child: Text(blackTime()),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorB,
                    )),
              ),
            ),
            Row(
              children: [
                Spacer(),
                Container(
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        stopBlack();
                        stopWhiteTimer();
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  insetPadding: EdgeInsets.all(2),
                                  title: Text('MODE'),
                                  content: Text('pick mode to play'),
                                  actions: [
                                    Row(children: [
                                      Container(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            setModeBullet();

                                            Navigator.pop(context);
                                          },
                                          child: Text("bullet 2|1"),
                                        ),
                                        padding: EdgeInsets.all(2),
                                      ),
                                      Container(
                                        child: ElevatedButton(
                                            onPressed: () {
                                              setModeBlitz();

                                              Navigator.pop(context);
                                            },
                                            child: Text("blitz 3|2")),
                                        padding: EdgeInsets.all(2),
                                      ),
                                      Container(
                                        child: ElevatedButton(
                                            onPressed: () {
                                              setModeRapid();

                                              Navigator.pop(context);
                                            },
                                            child: Text("rapid 15|10")),
                                        padding: EdgeInsets.all(2),
                                      ),
                                    ])
                                  ],
                                ));
                      },
                      child: Text("mode selector"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue,
                      )),
                ),
                Spacer(),
                Container(
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        startTimerWhite();
                      },
                      child: Text("Start"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue,
                      )),
                ),
                Spacer(),
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      bool isRunning =
                          timerWhite == null ? false : timerWhite!.isActive;
                      if (isRunning == true) {
                        stopWhiteTimer();
                        startTimerBlack();
                      } else {}
                    },
                    child: Text(whiteTime()),
                    style: ElevatedButton.styleFrom(
                      primary: colorW,
                    )),
              ),
            ),
          ],
        )));
  }

  whiteTime() {
    int value = secondsW;
    int m, s;
    m = (value ~/ 60);
    s = value - (m * 60);
    String result = "$m:$s";
    return result;
  }

  blackTime() {
    int value = secondsB;
    int m, s;
    m = (value ~/ 60);
    s = value - (m * 60);
    String result = "$m:$s";
    return result;
  }

  setModeBullet() {
    setState(() {
      secondsB = 120;
      secondsW = 120;
      incr = 1;
    });
  }

  setModeBlitz() {
    setState(() {
      secondsB = 180;
      secondsW = 180;
      incr = 2;
    });
  }

  setModeRapid() {
    setState(() {
      secondsB = 900;
      secondsW = 900;
      incr = 10;
    });
  }
}
