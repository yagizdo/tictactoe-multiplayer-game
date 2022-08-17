import 'package:mobx/mobx.dart';
import 'package:tictactoe_multiplayer_game/core/network_manager.dart';

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

  @observable
  bool isDone = false;

  @observable
  bool isWin = false;

  @observable
  bool isX = true;

  @observable
  var boardList = ObservableList<String>.of(List.filled(9, ''));

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
          _navigationService.showMyDialog(winner: isX ? 'X' : 'O');
          return;
        }
      }
    }
  }

  void checkDraw() {
    if (boardList.every((element) => element.isNotEmpty && isWin == false)) {
      _navigationService.showMyDialog(isDraw: true);
    }
  }

  @action
  void clickEvent(int index) {
    boardList[index] = isX ? 'x' : 'o';
    checkWin();
    checkDraw();
    if (isDone == true) {
      return;
    }
    isX = !isX;
  }
}
