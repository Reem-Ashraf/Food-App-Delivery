import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/theme/app_theme.dart';
import 'package:meta/meta.dart';

part 'theam_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  bool isDarkMode = false;
  ThemeData get currentTheme =>
      isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme;
  void toggleTheme() {
    isDarkMode = !isDarkMode;
    emit(AppThemeChange());
  }
}
