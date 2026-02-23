import 'package:flutter/material.dart';

class AppThemes {
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.orange,
    primaryColor: const Color(0xFFca7a22), // AppColors.primaryColor
    scaffoldBackgroundColor: Colors.white,

    colorScheme: const ColorScheme.light(
      primary: Color(0xFFca7a22), // AppColors.primaryColor
      secondary: Color(0xFF8c5522), // AppColors.darkBrown
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Color(0xFF000000), // AppColors.black
      outline: Color(0xFFD8D8D8), // AppColors.borderDarkGrey
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFca7a22),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),

    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.black87,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(color: Colors.black87, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.black87, fontSize: 14),
    ),

    iconTheme: const IconThemeData(color: Colors.black87),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFFca7a22),
      foregroundColor: Colors.white,
    ),

    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Color(0xFFF2F4F7), // AppColors.textFieldFillColor
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFD8D8D8)),
      ),
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.orange,
    primaryColor: const Color(0xFFca7a22),
    scaffoldBackgroundColor: const Color(0xFF121212),

    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFca7a22), // AppColors.primaryColor
      secondary: Color(0xFF8c5522), // AppColors.darkBrown
      surface: Color(0xFF1E1E1E),
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      outline: Color(0xFF484848),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1E1E1E),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),

    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.white70, fontSize: 14),
    ),

    iconTheme: const IconThemeData(color: Colors.white),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFFca7a22),
      foregroundColor: Colors.white,
    ),

    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Color(0xFF2A2A2A),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF484848)),
      ),
    ),
  );
}
