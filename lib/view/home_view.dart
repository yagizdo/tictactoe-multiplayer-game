import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/constants/app_constants.dart';

import '../constants/app_assets.dart';
import '../constants/app_theme.dart';
import '../widget/home_view/menu_buttons_section.dart';
import '../widget/home_view/settings_fab_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Settings Fab Button
      floatingActionButton: SettingsFabButton(
        backgroundColor: purple,
        function: () {},
        child: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),

      // Custom Background
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

        // Child
        child: Column(
          children: [
            height67,
            // Logo Placeholder
            SizedBox(width: 173.w, height: 173.h, child: const Placeholder()),
            height56,
            const MenuButtonsSection()
          ],
        ),
      ),
    );
  }
}
