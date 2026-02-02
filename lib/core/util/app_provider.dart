import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/theme/cubit/theme_cubit.dart';

class AppBlocProviders {
  AppBlocProviders._(); // prevent instantiation

  static final List<BlocProvider> providers = [
    BlocProvider<ThemeCubit>(create: (context) => ThemeCubit()),
  ];

}