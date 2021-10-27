import 'package:flutter/material.dart';
import 'package:projekt/screens/mainScreen.dart';
import 'package:projekt/screens/MTG.dart';
import 'package:projekt/screens/DiceRoll.dart';

void main() {
  runApp(MyApp());
}

Map<String, WidgetBuilder> phoneRoutes = {
  '/mainScreen': (context) => MainScreen(),
  '/MTG': (context) => MTGScreen(),
  '/diceRoll': (context) => DiceScreen(),
};

String phoneHomeRoutes = '/mainScreen';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project',
      initialRoute: phoneHomeRoutes,
      routes: phoneRoutes,
    );
  }
}
