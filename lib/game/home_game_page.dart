import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:coup_game/game/newgame/new_game_page.dart';

class InitializeGamePage extends StatefulWidget {
  @override
  _InitializeGamePageState createState() => _InitializeGamePageState();
}

class _InitializeGamePageState extends State<InitializeGamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Coup'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildCriarJogo(),
              buildEntrarJogo(),
              blankWidget(),
            ],
          ),
        ));
  }

  Widget buildEntrarJogo() {
    return Container(
      margin: const EdgeInsets.all(30.0),
      padding: const EdgeInsets.all(10.0),
      decoration: myBoxDecoration(Colors.red[400]),
      //             <--- BoxDecoration here
      child: MaterialButton(
        child: Text(
          "Entrar Jogo",
          style: TextStyle(fontSize: 44.0),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget buildCriarJogo() {
    return Container(
      margin: const EdgeInsets.all(40.0),
      padding: const EdgeInsets.all(10.0),
      decoration: myBoxDecoration(Colors.blueAccent[400]),
      //             <--- BoxDecoration here
      child: MaterialButton(
        child: Text(
          "Novo Jogo",
          style: TextStyle(fontSize: 46.0),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewGamePage()));
        },
      ),
    );
  }

  BoxDecoration myBoxDecoration(Color color) {
    return BoxDecoration(
      color: color,
      boxShadow: [buildBoxShadow(3.0)],
    );
  }

  BoxShadow buildBoxShadow(double verticalMove) {
    return BoxShadow(
      color: Colors.grey,
      blurRadius: 1.5,
      spreadRadius: 1.5,
      offset: Offset(
        1.5, // horizontal move
        verticalMove, // vertica move
      ),
    );
  }

  blankWidget() {
    return Container(
      width: 120,
    );
  }
}
