import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:tictactoe_multiplayer_game/model/game_view_model.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_theme.dart';

class GameBox extends StatefulWidget {
  const GameBox({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<GameBox> createState() => _GameBoxState();
}

class _GameBoxState extends State<GameBox> {
  final GameViewModel _gameViewModel = GetIt.I<GameViewModel>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: InkWell(
        onTap: () {
          setState(() {
            if (_gameViewModel.isDone == true) {
              return;
            }
            if (_gameViewModel.boardList[widget.index].isEmpty) {
              _gameViewModel.clickEvent(widget.index);
            }
          });
        },
        child: Observer(
          builder: (_) => Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(8.sp),
            ),
            child: _gameViewModel.boardList[widget.index].isEmpty
                ? const SizedBox()
                : Center(
                    child: SvgPicture.asset(
                        _gameViewModel.boardList[widget.index] == 'x'
                            ? AppAsset.xIcon
                            : AppAsset.oIcon),
                  ),
          ),
        ),
      ),
    );
  }
}
