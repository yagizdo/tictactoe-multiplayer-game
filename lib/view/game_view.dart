import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/constants/app_constants.dart';
import 'package:tictactoe_multiplayer_game/widget/game_view/user_box.dart';
import 'package:tictactoe_multiplayer_game/widget/gradient_background.dart';

import '../constants/app_theme.dart';
import '../widget/game_view/quit_button.dart';
import '../widget/game_view/timer_component.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [linearColorOne, linearColorTwo]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w),
          child: Column(
            children: [
              height26,
              // Quit button and Timer
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  QuitButton(),
                  TimerComponent(),
                ],
              ),

              height56,
              // User boxs and score
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  UserBox(isTurn: true, isX: true),
                  UserBox(isTurn: false, isX: false),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
