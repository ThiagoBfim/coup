import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'new_game_controller.dart';

class NewGamePage extends StatefulWidget {
  @override
  _NewGamePage createState() => _NewGamePage();
}

class _NewGamePage extends State<NewGamePage> {
  final _controller = NewGameController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                 buildTitle(),
                _textField(
                  labelText: "Nome do jogo",
                  onChanged: _controller.client.changeJogoName,
                  errorText: _controller.validarNome
                ),
                SizedBox(height: 20),
                _textNumberField(
                  labelText: "Quantidade jogadores",
                  onChanged: _controller.client.changeQtdJogadores,
                  errorText: _controller.validarQtdJogadores
                ),
                SizedBox(height: 40),
                MaterialButton(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      'Criar jogo',
                      style: Theme.of(context).textTheme.display1,
                  ),
                  onPressed: () {},),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Container buildTitle() {
    return Container(
               padding: const EdgeInsets.all(20.0),
               child: Text(
                "Crie uma nova partida e chame seus amigos!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32.0, color: Colors.blue),
            ),
             );
  }

  _textField({labelText, onChanged, String Function() errorText}) {
    return Observer(
      builder: (_) {
        return TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: labelText,
              errorText: errorText == null ? null : errorText()),
        );
      },
    );
  }

  _textNumberField({labelText, onChanged, String Function() errorText}) {
    return Observer(
      builder: (_) {
        return TextField(
          onChanged: onChanged,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            WhitelistingTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: labelText,
              errorText: errorText == null ? null : errorText()),
        );
      },
    );
  }
}
