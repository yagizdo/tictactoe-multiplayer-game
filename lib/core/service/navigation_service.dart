import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer_game/widget/settings_popup/settings_container.dart';

import '../../widget/game_view/game_dialog/game_dialog_container.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  void showScoreDialog({String? winner, bool isDraw = false}) {
    showDialog(
      context: navigatorKey.currentContext!,
      builder: (context) => GameDialogContainer(
        winner: winner,
        isDraw: isDraw,
      ),
    );
  }

  void showSettingsPopup({String? winner, bool isDraw = false}) {
    showDialog(
        context: navigatorKey.currentContext!,
        builder: (context) => const Center(
              child: SettingsContainer(),
            ));
  }
}
