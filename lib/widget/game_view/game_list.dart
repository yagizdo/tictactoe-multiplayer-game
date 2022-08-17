import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictactoe_multiplayer_game/widget/game_view/game_box.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_theme.dart';

class GameList extends StatelessWidget {
  const GameList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 9,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GameBox(index: index);
        },
      ),
    );
  }
}
