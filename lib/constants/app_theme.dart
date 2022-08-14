import 'package:flutter/material.dart';

final darkBlue = Color(0xFF1C2151);
final linearColorOne = Color(0xFF1A1F4E);
final linearColorTwo = Color(0xFF23295E);
final purple = Color(0xFF624DBE);

class AppTheme {
  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  final lightTheme = ThemeData(
    primarySwatch: Colors.yellow,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.yellow,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
