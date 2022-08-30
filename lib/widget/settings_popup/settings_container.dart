import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_theme.dart';

class SettingsContainer extends StatelessWidget {
  const SettingsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 30),
      child: Container(
        width: 319.w,
        height: 350.h,
        decoration: BoxDecoration(
          color: dialogColor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
