import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/app_theme.dart';
import 'core/util/app_provider.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: AppBlocProviders.providers,
      child: const MyApp(),
    ),
  );
}


