import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../constants/app_constants.dart';
import '../../constants/app_theme.dart';
import '../../model/game_view_model.dart';

class TimerComponent extends StatefulWidget {
  const TimerComponent({Key? key}) : super(key: key);

  @override
  State<TimerComponent> createState() => _TimerComponentState();
}

class _TimerComponentState extends State<TimerComponent> {
  final GameViewModel _gameViewModel = GetIt.I<GameViewModel>();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: purple.withOpacity(0.5),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.timer),
          width9,
          Observer(builder: (_) => Text('${_gameViewModel.timerValue}')),
        ],
      ),
    );
  }
}
