import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tictactoe_multiplayer_game/core/network_manager.dart';

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
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void showMyDialog({String? winner, bool isDraw = false}) {
    showDialog(
        context: navigatorKey.currentContext!,
        builder: (context) => BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Center(
                child: Material(
                  color: Colors.transparent,
                  child: isDraw ? Text('Draw!') : Text('Hello ${winner}'),
                ),
              ),
            ));
  }
}
