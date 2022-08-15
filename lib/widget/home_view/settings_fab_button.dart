import 'package:flutter/material.dart';

import '../../constants/app_theme.dart';

class SettingsFabButton extends StatelessWidget {
  const SettingsFabButton(
      {Key? key,
      required this.function,
      required this.child,
      this.backgroundColor})
      : super(key: key);
  final VoidCallback function;
  final Widget child;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor ?? purple,
      onPressed: function,
      child: child,
    );
  }
}
