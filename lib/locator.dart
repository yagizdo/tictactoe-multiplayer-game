import 'package:get_it/get_it.dart';
import 'package:tictactoe_multiplayer_game/core/network_manager.dart';

import 'core/service/navigation_service.dart';
import 'model/game_view_model.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  // Network Manager
  getIt.registerSingleton(NetworkManager());
  // Game view model
  getIt.registerSingleton(GameViewModel(getIt.get<NetworkManager>()));
  // Navigation Service
  getIt.registerLazySingleton(() => NavigationService());
}
