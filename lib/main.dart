import 'package:flutter/material.dart';
import 'package:projekt/screens/mainScreen.dart';
import 'package:projekt/screens/log/Login.dart';
import 'package:projekt/screens/log/Register.dart';
import 'package:projekt/screens/games/MTG.dart';
import 'package:projekt/screens/games/DiceRoll.dart';
import 'package:projekt/screens/games/Cards.dart';
import 'package:projekt/screens/games/DiceGame.dart';
import 'package:projekt/screens/games/LiarsDice.dart';

void main() {
  runApp(MyApp());
}

Map<String, WidgetBuilder> phoneRoutes = {
  '/mainScreen': (context) => MainScreen(),
  '/MTG': (context) => MTGScr(),
  '/diceRoll': (context) => DiceScr(),
  '/login': (context) => LoginScr(),
  '/register': (context) => RegisterScr(),
  '/diceGame': (context) => DiceGameScr(),
  '/liarsDice': (context) => LiarsDiceScr(),
  '/cards': (context) => CardsScr(),
};

String phoneHomeRoutes = '/login';

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
