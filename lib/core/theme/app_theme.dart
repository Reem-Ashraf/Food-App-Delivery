import 'package:flutter/material.dart';

class AppTheme{
  //dark theme
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
  );

  //light theme
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
  );
}