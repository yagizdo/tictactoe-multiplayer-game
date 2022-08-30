import 'package:flutter/material.dart';

const darkBlue = Color(0xFF1C2151);
const white = Color(0xFFFFFFFF);
const blue = Color(0xFF3D54E6);
const orange = Color(0xFFFFA158);
const linearColorOne = Color(0xFF1A1F4E);
const linearColorTwo = Color(0xFF23295E);
const purple = Color(0xFF624DBE);
const black = Color(0xFF101130);
const dialogColor = Color(0xFF1B2150);
const grey = Color(0xFFD9D9D9);
const red = Color(0xFFF24D4F);

class AppTheme {
  final darkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: const TextTheme(
        // Offline Mode text
        titleLarge:
            TextStyle(color: white, fontSize: 20, fontWeight: FontWeight.bold),

        // Game view username text and score text
        titleMedium:
            TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.bold),

        // Game view alert dialog win-lost-draw text and coin text
        titleSmall:
            TextStyle(color: white, fontSize: 24, fontWeight: FontWeight.bold),

        // Quit and restart button text
        labelSmall:
            TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.w500),

        // Settings popup title
        labelMedium:
            TextStyle(color: white, fontSize: 20, fontWeight: FontWeight.w500),
      ));
}
