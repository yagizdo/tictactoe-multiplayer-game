import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tictactoe_multiplayer_game/core/network_manager.dart';
import 'package:tictactoe_multiplayer_game/widget/game_view/game_dialog/game_dialog_container.dart';

import 'model/game_view_model.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton(NetworkManager());
  getIt.registerSingleton(GameViewModel(getIt.get<NetworkManager>()));
  getIt.registerLazySingleton(() => NavigationService());
}

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  void showMyDialog({String? winner, bool isDraw = false}) {
    showDialog(
      context: navigatorKey.currentContext!,
      builder: (context) => GameDialogContainer(
        winner: winner,
        isDraw: isDraw,
      ),
    );
  }
}
