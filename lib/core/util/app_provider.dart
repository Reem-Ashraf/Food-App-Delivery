import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/theme/cubit/theme_cubit.dart';
import 'package:food_app/features/home_page/cubit/home_page_cubit.dart';

class AppBlocProviders {
  AppBlocProviders._(); // prevent instantiation

  static final List<BlocProvider> providers = [
    BlocProvider<ThemeCubit>(create: (context) => ThemeCubit()),
    BlocProvider<HomePageCubit>(
      create: (context) => HomePageCubit()..getCurrentLocation(),
    ),
  ];
}
