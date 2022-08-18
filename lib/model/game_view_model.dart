import 'package:mobx/mobx.dart';
import 'package:tictactoe_multiplayer_game/core/network_manager.dart';
import 'package:tictactoe_multiplayer_game/routes.dart';

import '../locator.dart';

part 'game_view_model.g.dart';

class GameViewModel = _GameViewModel with _$GameViewModel;

abstract class _GameViewModel with Store {
  _GameViewModel(NetworkManager networkManager)
      : _networkManager = networkManager;

  // Network Manager
  late final NetworkManager _networkManager;

  // Winning List
  List<List<int>> winningList = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];

  late final NavigationService _navigationService = getIt<NavigationService>();

  String twoDigits(int n) => n.toString().padLeft(2, '0');

  @observable
  String minutes = '0';

  @observable
  String seconds = '0';

  @observable
  bool isDone = false;

  @observable
  bool isWin = false;

  // User turn = 0 (X) : User Turn = 1 (O)
  @observable
  int userTurn = 0;

  // Timer
  @observable
  int timerValue = 0;

  @observable
  Duration timerDuration = const Duration(seconds: 0);

  @observable
  var boardList = ObservableList<String>.of(List.filled(9, ''));

  void updateTimer() {
    timerValue += 1;
    timerDuration = Duration(seconds: timerValue);
    minutes = twoDigits(timerDuration.inMinutes.remainder(60));
    seconds = twoDigits(timerDuration.inSeconds.remainder(60));
  }

  void disposeTimer() {
    timerValue = 0;
    timerDuration = const Duration(seconds: 0);
  }

  void checkWin() {
    for (var winningPos in winningList) {
      String playerPosition0 = boardList[winningPos[0]];
      String playerPosition1 = boardList[winningPos[1]];
      String playerPosition2 = boardList[winningPos[2]];

      if (playerPosition0.isNotEmpty) {
        if (playerPosition0 == playerPosition1 &&
            playerPosition0 == playerPosition2) {
          isDone = true;
          isWin = true;
          _navigationService.showMyDialog(winner: userTurn == 0 ? 'X' : 'O');
          disposeTimer();
          return;
        }
      }
    }
  }

  void checkDraw() {
    if (boardList.every((element) => element.isNotEmpty && isWin == false)) {
      _navigationService.showMyDialog(isDraw: true);
      disposeTimer();
    }
  }

  @action
  void resetGame() {
    boardList.fillRange(0, 9, '');
    isDone = false;
    isWin = false;
    disposeTimer();
    userTurn = 0;
  }

  @action
  void quitGame() {
    resetGame();
    _navigationService.navigateTo(Routes.homeViewRoute);
  }

  @action
  void clickEvent(int index) {
    boardList[index] = userTurn == 0 ? 'x' : 'o';
    checkWin();
    checkDraw();
    if (isDone == true) {
      return;
    }
    if (userTurn == 0) {
      userTurn = 1;
    } else {
      userTurn = 0;
    }
  }
}
