import 'package:get_it/get_it.dart';
import 'package:tictactoe_multiplayer_game/core/network_manager.dart';

import 'model/game_view_model.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton(NetworkManager());
  getIt.registerSingleton(GameViewModel(getIt.get<NetworkManager>()));
}
