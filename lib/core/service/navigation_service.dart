import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/game_view/game_dialog/game_dialog_container.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  void showScoreDialog({String? winner, bool isDraw = false}) {
    showDialog(
      context: navigatorKey.currentContext!,
      builder: (context) => GameDialogContainer(
        winner: winner,
        isDraw: isDraw,
      ),
    );
  }

  void showSettingsPopup({String? winner, bool isDraw = false}) {
    showDialog(
        context: navigatorKey.currentContext!,
        builder: (context) => Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 30),
                child: Container(
                  color: Colors.yellow,
                  width: 319.w,
                  height: 350.h,
                ),
              ),
            ));
  }
}
