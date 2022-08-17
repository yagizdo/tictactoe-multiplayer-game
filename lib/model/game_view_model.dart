import 'package:mobx/mobx.dart';
import 'package:tictactoe_multiplayer_game/core/network_manager.dart';

part 'game_view_model.g.dart';

class GameViewModel = _GameViewModel with _$GameViewModel;

abstract class _GameViewModel with Store {
  _GameViewModel(NetworkManager networkManager)
      : _networkManager = networkManager;

  // Network Manager
  late final NetworkManager _networkManager;

  @observable
  bool? isDone;

  @observable
  bool? isWin;

  @observable
  bool isX = true;

  @observable
  var boardList = ObservableList<String>.of(List.filled(9, ''));

  @action
  void clickEvent(int index) {
    boardList[index] = isX ? 'x' : 'o';
    isX = !isX;
  }
}
