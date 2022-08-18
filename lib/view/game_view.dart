import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:tictactoe_multiplayer_game/constants/app_constants.dart';
import 'package:tictactoe_multiplayer_game/widget/game_view/game_container.dart';
import 'package:tictactoe_multiplayer_game/widget/game_view/score_component.dart';
import 'package:tictactoe_multiplayer_game/widget/game_view/user_box.dart';
import 'package:tictactoe_multiplayer_game/widget/gradient_background.dart';

import '../constants/app_theme.dart';
import '../model/game_view_model.dart';
import '../widget/game_view/quit_button.dart';
import '../widget/game_view/timer_component.dart';

class GameView extends StatefulWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  final GameViewModel _gameViewModel = GetIt.I<GameViewModel>();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _gameViewModel.updateTimer();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
    _gameViewModel.disposeTimer();
  }

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
              Observer(
                builder: (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UserBox(
                        isTurn: _gameViewModel.userTurn == 0 ? true : false,
                        isX: true),
                    const ScoreComponent(),
                    UserBox(
                        isTurn: _gameViewModel.userTurn == 0 ? false : true,
                        isX: false),
                  ],
                ),
              ),

              height36,

              const GameContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
