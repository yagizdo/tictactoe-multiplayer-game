import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/routes.dart';

import '../../constants/app_constants.dart';
import '../../constants/app_theme.dart';
import 'menu_button.dart';

class MenuButtonsSection extends StatelessWidget {
  const MenuButtonsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Single Player
        MenuButton(
          function: () {},
          width: 240.w,
          height: 50.h,
          borderRadius: 30.sp,
          child: const Text('Single Player'),
        ),

        height21,

        // Co-Op
        MenuButton(
          function: () {
            Navigator.pushReplacementNamed(context, Routes.gameViewRoute);
          },
          width: 240.w,
          height: 50.h,
          backgroundColor: blue,
          borderRadius: 30.sp,
          child: const Text('Co-Op'),
        ),

        height21,

        // Multi Player
        MenuButton(
          function: () {},
          width: 240.w,
          height: 50.h,
          backgroundColor: orange,
          borderRadius: 30.sp,
          child: const Text('Multi Player'),
        ),
      ],
    );
  }
}
