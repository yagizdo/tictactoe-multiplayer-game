import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tictactoe_multiplayer_game/view/game_view.dart';
import 'package:tictactoe_multiplayer_game/view/home_view.dart';

class Routes {
  static const homeViewRoute = '/homeView';
  static const gameViewRoute = '/gameView';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeViewRoute:
        return PageTransition(
            child: const HomeView(),
            duration: const Duration(milliseconds: 400),
            type: PageTransitionType.size,
            alignment: Alignment.center,
            childCurrent: const HomeView());

      case gameViewRoute:
        return PageTransition(
            child: const GameView(),
            duration: const Duration(milliseconds: 400),
            type: PageTransitionType.fade,
            alignment: Alignment.center,
            childCurrent: const GameView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
