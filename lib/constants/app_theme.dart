import 'package:flutter/material.dart';

const darkBlue = Color(0xFF1C2151);
const linearColorOne = Color(0xFF1A1F4E);
const linearColorTwo = Color(0xFF23295E);
const purple = Color(0xFF624DBE);

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
