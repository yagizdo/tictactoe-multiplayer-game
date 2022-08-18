import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictactoe_multiplayer_game/constants/app_assets.dart';
import 'package:tictactoe_multiplayer_game/constants/app_constants.dart';

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
          border: isTurn ? Border.all(color: grey, width: 1) : null),
      child: Column(
        children: [
          height12,
          Text(
            'oguzsh',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          height15,
          SvgPicture.asset(
            isX ? AppAsset.xIcon : AppAsset.oIcon,
            width: 40.w,
            height: 40.h,
          ),
        ],
      ),
    );
  }
}
