import 'package:flutter/material.dart';

import 'game/home_game_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coup',
      theme: ThemeData(
        backgroundColor: Colors.cyan[50],
        primarySwatch: Colors.blue,
        primaryColor: Colors.red,
      ),
      home: InitializeGamePage(),
    );
  }
}
