import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_theme.dart';

class UserBox extends StatelessWidget {
  const UserBox({Key? key, required this.isTurn, required this.isX})
      : super(key: key);
  final bool isTurn;
  final bool isX;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 100.h,
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
