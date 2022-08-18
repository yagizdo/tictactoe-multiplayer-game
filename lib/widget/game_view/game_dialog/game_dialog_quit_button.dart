import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:tictactoe_multiplayer_game/constants/app_constants.dart';

import '../../../constants/app_theme.dart';
import '../../../model/game_view_model.dart';

class GameDialogQuitButton extends StatefulWidget {
  const GameDialogQuitButton({Key? key}) : super(key: key);

  @override
  State<GameDialogQuitButton> createState() => _GameDialogQuitButtonState();
}

class _GameDialogQuitButtonState extends State<GameDialogQuitButton> {
  final GameViewModel _gameViewModel = GetIt.I<GameViewModel>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 126.w,
      height: 40.h,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            red,
          ),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        onPressed: () {
          _gameViewModel.quitGame();
        },
        child: Row(
          children: [
            const Icon(Icons.close),
            width5,
            Text(
              'Quit',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
