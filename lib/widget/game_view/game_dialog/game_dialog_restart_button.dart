import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:tictactoe_multiplayer_game/constants/app_assets.dart';

import '../../../constants/app_constants.dart';
import '../../../constants/app_theme.dart';
import '../../../model/game_view_model.dart';

class GameDialogRestartButton extends StatefulWidget {
  const GameDialogRestartButton({Key? key}) : super(key: key);

  @override
  State<GameDialogRestartButton> createState() =>
      _GameDialogRestartButtonState();
}

class _GameDialogRestartButtonState extends State<GameDialogRestartButton> {
  final GameViewModel _gameViewModel = GetIt.I<GameViewModel>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 126.w,
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
          _gameViewModel.resetGame();
          Navigator.pop(context);
        },
        child: Row(
          children: [
            SvgPicture.asset(
              AppAsset.restartIcon,
              width: 15.w,
              height: 15.h,
            ),
            width9,
            Text(
              'Restart',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
    ;
  }
}
