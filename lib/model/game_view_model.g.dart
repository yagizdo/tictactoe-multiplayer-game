// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameViewModel on _GameViewModel, Store {
  late final _$isDoneAtom =
      Atom(name: '_GameViewModel.isDone', context: context);

  @override
  bool get isDone {
    _$isDoneAtom.reportRead();
    return super.isDone;
  }

  @override
  set isDone(bool value) {
    _$isDoneAtom.reportWrite(value, super.isDone, () {
      super.isDone = value;
    });
  }

  late final _$isWinAtom = Atom(name: '_GameViewModel.isWin', context: context);

  @override
  bool get isWin {
    _$isWinAtom.reportRead();
    return super.isWin;
  }

  @override
  set isWin(bool value) {
    _$isWinAtom.reportWrite(value, super.isWin, () {
      super.isWin = value;
    });
  }

  late final _$userTurnAtom =
      Atom(name: '_GameViewModel.userTurn', context: context);

  @override
  int get userTurn {
    _$userTurnAtom.reportRead();
    return super.userTurn;
  }

  @override
  set userTurn(int value) {
    _$userTurnAtom.reportWrite(value, super.userTurn, () {
      super.userTurn = value;
    });
  }

  late final _$boardListAtom =
      Atom(name: '_GameViewModel.boardList', context: context);

  @override
  ObservableList<String> get boardList {
    _$boardListAtom.reportRead();
    return super.boardList;
  }

  @override
  set boardList(ObservableList<String> value) {
    _$boardListAtom.reportWrite(value, super.boardList, () {
      super.boardList = value;
    });
  }

  late final _$_GameViewModelActionController =
      ActionController(name: '_GameViewModel', context: context);

  @override
  void clickEvent(int index) {
    final _$actionInfo = _$_GameViewModelActionController.startAction(
        name: '_GameViewModel.clickEvent');
    try {
      return super.clickEvent(index);
    } finally {
      _$_GameViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDone: ${isDone},
isWin: ${isWin},
userTurn: ${userTurn},
boardList: ${boardList}
    ''';
  }
}
