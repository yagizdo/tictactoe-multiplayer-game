import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_theme.dart';

class GameBox extends StatefulWidget {
  const GameBox({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<GameBox> createState() => _GameBoxState();
}

class _GameBoxState extends State<GameBox> {
  List<String> gameList = List.filled(9, '', growable: false);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: InkWell(
        onTap: () {
          setState(() {
            gameList[widget.index] = 'x';
          });
        },
        child: Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: black,
            borderRadius: BorderRadius.circular(8.sp),
          ),
          child: gameList[widget.index].isEmpty
              ? const SizedBox()
              : Center(
                  child: SvgPicture.asset(gameList[widget.index] == 'x'
                      ? AppAsset.xIcon
                      : AppAsset.oIcon),
                ),
        ),
      ),
    );
  }
}
