import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_theme.dart';

class GameContainer extends StatelessWidget {
  const GameContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 334.h,
      decoration: BoxDecoration(
          color: purple.withOpacity(0.5),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
