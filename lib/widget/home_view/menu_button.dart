import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/constants/app_theme.dart';

class MenuButton extends StatelessWidget {
  const MenuButton(
      {Key? key,
      required this.child,
      required this.function,
      this.height,
      this.width,
      this.backgroundColor,
      this.borderRadius})
      : super(key: key);

  final VoidCallback function;
  final Widget child;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 150.w,
      height: height ?? 50.w,
      child: ElevatedButton(
        onPressed: function,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor ?? purple),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 2),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
