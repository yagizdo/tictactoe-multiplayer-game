import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_theme.dart';

class GameDialogScoreContainer extends StatelessWidget {
  const GameDialogScoreContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              AppAsset.xoxCoinIcon,
              width: 21.w,
              height: 21.h,
            ),
            Text(
              '3500',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
