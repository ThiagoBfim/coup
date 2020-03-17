// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Game on _GameBase, Store {
  final _$jogoNameAtom = Atom(name: '_GameBase.jogoName');

  @override
  String get jogoName {
    _$jogoNameAtom.context.enforceReadPolicy(_$jogoNameAtom);
    _$jogoNameAtom.reportObserved();
    return super.jogoName;
  }

  @override
  set jogoName(String value) {
    _$jogoNameAtom.context.conditionallyRunInAction(() {
      super.jogoName = value;
      _$jogoNameAtom.reportChanged();
    }, _$jogoNameAtom, name: '${_$jogoNameAtom.name}_set');
  }

  final _$qtdJogadoresAtom = Atom(name: '_GameBase.qtdJogadores');

  @override
  int get qtdJogadores {
    _$qtdJogadoresAtom.context.enforceReadPolicy(_$qtdJogadoresAtom);
    _$qtdJogadoresAtom.reportObserved();
    return super.qtdJogadores;
  }

  @override
  set qtdJogadores(int value) {
    _$qtdJogadoresAtom.context.conditionallyRunInAction(() {
      super.qtdJogadores = value;
      _$qtdJogadoresAtom.reportChanged();
    }, _$qtdJogadoresAtom, name: '${_$qtdJogadoresAtom.name}_set');
  }

  final _$_GameBaseActionController = ActionController(name: '_GameBase');

  @override
  dynamic changeJogoName(String jogoName) {
    final _$actionInfo = _$_GameBaseActionController.startAction();
    try {
      return super.changeJogoName(jogoName);
    } finally {
      _$_GameBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeQtdJogadores(String qtdJogadores) {
    final _$actionInfo = _$_GameBaseActionController.startAction();
    try {
      return super.changeQtdJogadores(qtdJogadores);
    } finally {
      _$_GameBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'jogoName: ${jogoName.toString()},qtdJogadores: ${qtdJogadores.toString()}';
    return '{$string}';
  }
}
