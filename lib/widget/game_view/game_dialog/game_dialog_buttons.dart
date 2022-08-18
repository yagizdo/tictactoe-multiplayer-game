import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/widget/game_view/game_dialog/game_dialog_restart_button.dart';

import 'game_dialog_quit_button.dart';

class GameDialogButtons extends StatelessWidget {
  const GameDialogButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const GameDialogQuitButton(),
        SizedBox(
          width: 12.w,
        ),
        const GameDialogRestartButton(),
      ],
    );
  }
}
