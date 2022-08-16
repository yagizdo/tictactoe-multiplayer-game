import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/constants/app_constants.dart';

import '../../constants/app_theme.dart';

class QuitButton extends StatelessWidget {
  const QuitButton({Key? key}) : super(key: key);

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
        onPressed: () {},
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
