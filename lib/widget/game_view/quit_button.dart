import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:tictactoe_multiplayer_game/constants/app_constants.dart';

import '../../constants/app_theme.dart';
import '../../model/game_view_model.dart';

class QuitButton extends StatefulWidget {
  const QuitButton({Key? key}) : super(key: key);

  @override
  State<QuitButton> createState() => _QuitButtonState();
}

class _QuitButtonState extends State<QuitButton> {
  final GameViewModel _gameViewModel = GetIt.I<GameViewModel>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 40.h,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            purple.withOpacity(0.5),
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
            width9,
            const Text('Quit'),
          ],
        ),
      ),
    );
  }
}
