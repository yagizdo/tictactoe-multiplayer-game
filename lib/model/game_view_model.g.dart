// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameViewModel on _GameViewModel, Store {
  late final _$minutesAtom =
      Atom(name: '_GameViewModel.minutes', context: context);

  @override
  String get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(String value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  late final _$secondsAtom =
      Atom(name: '_GameViewModel.seconds', context: context);

  @override
  String get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(String value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

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

  late final _$timerValueAtom =
      Atom(name: '_GameViewModel.timerValue', context: context);

  @override
  int get timerValue {
    _$timerValueAtom.reportRead();
    return super.timerValue;
  }

  @override
  set timerValue(int value) {
    _$timerValueAtom.reportWrite(value, super.timerValue, () {
      super.timerValue = value;
    });
  }

  late final _$timerDurationAtom =
      Atom(name: '_GameViewModel.timerDuration', context: context);

  @override
  Duration get timerDuration {
    _$timerDurationAtom.reportRead();
    return super.timerDuration;
  }

  @override
  set timerDuration(Duration value) {
    _$timerDurationAtom.reportWrite(value, super.timerDuration, () {
      super.timerDuration = value;
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
  void resetGame() {
    final _$actionInfo = _$_GameViewModelActionController.startAction(
        name: '_GameViewModel.resetGame');
    try {
      return super.resetGame();
    } finally {
      _$_GameViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void quitGame() {
    final _$actionInfo = _$_GameViewModelActionController.startAction(
        name: '_GameViewModel.quitGame');
    try {
      return super.quitGame();
    } finally {
      _$_GameViewModelActionController.endAction(_$actionInfo);
    }
  }

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
minutes: ${minutes},
seconds: ${seconds},
isDone: ${isDone},
isWin: ${isWin},
userTurn: ${userTurn},
timerValue: ${timerValue},
timerDuration: ${timerDuration},
boardList: ${boardList}
    ''';
  }
}
