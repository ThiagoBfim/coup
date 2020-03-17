import 'package:coup_game/model/game.dart';
import 'package:mobx/mobx.dart';

part 'new_game_controller.g.dart';

class NewGameController = _NewGameController with _$NewGameController;

abstract class _NewGameController with Store {

  var client = Game();


  String validarNome(){
    if(client.jogoName == null || client.jogoName.isEmpty){
      return "Esse campo é obrigatório";
    }
  }

  String validarQtdJogadores(){
    if(client.qtdJogadores == null || client.qtdJogadores == 0){
      return "Esse campo é obrigatório2";
    }
    if ( client.qtdJogadores > 10){
      return "Modo de jogo não permitido. Máximo 10 pessoas.";
    }
  }
}