import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/constants/app_constants.dart';

import '../constants/app_assets.dart';
import '../constants/app_theme.dart';
import '../widget/home_view/menu_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [linearColorOne, linearColorTwo]),
          image: DecorationImage(
            image: AssetImage(AppAsset.backgroundImage),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            height67,
            // Logo Placeholder
            SizedBox(width: 173.w, height: 173.h, child: const Placeholder()),
            height56,

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
              function: () {},
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
        ),
      ),
    );
  }
}
