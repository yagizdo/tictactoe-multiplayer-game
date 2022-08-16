import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_theme.dart';

class ScoreComponent extends StatelessWidget {
  const ScoreComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 30.h,
      decoration: BoxDecoration(
          color: purple.withOpacity(0.5),
          borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          '0-0',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
