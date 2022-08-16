import 'package:flutter/material.dart';

const darkBlue = Color(0xFF1C2151);
const white = Color(0xFFFFFFFF);
const blue = Color(0xFF3D54E6);
const orange = Color(0xFFFFA158);
const linearColorOne = Color(0xFF1A1F4E);
const linearColorTwo = Color(0xFF23295E);
const purple = Color(0xFF624DBE);
const black = Color(0xFF101130);
const grey = Color(0xFFD9D9D9);

class AppTheme {
  final darkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: const TextTheme(
        // Offline Mode text
        titleLarge:
            TextStyle(color: white, fontSize: 20, fontWeight: FontWeight.bold),

        // Game view username text
        titleMedium:
            TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.bold),
      ));
}
