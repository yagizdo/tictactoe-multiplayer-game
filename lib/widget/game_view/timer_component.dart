import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_constants.dart';
import '../../constants/app_theme.dart';

class TimerComponent extends StatelessWidget {
  const TimerComponent({Key? key}) : super(key: key);

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
          const Text('0:05'),
        ],
      ),
    );
  }
}
