import 'package:mobx/mobx.dart';

part 'game.g.dart';

class Game = _GameBase with _$Game;

abstract class _GameBase with Store {

  @observable
  String jogoName;

  @action
  changeJogoName(String jogoName) => this.jogoName = jogoName;

  @observable
  int qtdJogadores;

  @action
  changeQtdJogadores(String qtdJogadores) => this.qtdJogadores = int.parse(qtdJogadores);


}