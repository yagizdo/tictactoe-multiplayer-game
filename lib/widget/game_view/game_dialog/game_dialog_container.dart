import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/widget/game_view/game_dialog/game_dialog_content.dart';

import '../../../constants/app_theme.dart';

class GameDialogContainer extends StatelessWidget {
  const GameDialogContainer({Key? key, this.winner, this.isDraw = false})
      : super(key: key);
  final String? winner;
  final bool isDraw;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 30),
      child: Center(
        child: Container(
          width: 319.w,
          height: 350.h,
          decoration: BoxDecoration(
            color: dialogColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: GameDialogContent(
              isDraw: isDraw,
            ),
          ),
        ),
      ),
    );
  }
}
