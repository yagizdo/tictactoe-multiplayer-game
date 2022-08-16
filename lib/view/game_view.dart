import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer_game/widget/gradient_background.dart';

import '../constants/app_theme.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: GradientBackground(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [linearColorOne, linearColorTwo]),
      child: Center(
        child:
            Text('You are looking at the message for bottom navigation item'),
      ),
    ));
  }
}
