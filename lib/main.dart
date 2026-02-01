import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/theme/cubit/theme_cubit.dart';


import 'core/app_routting/app_router.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider<ThemeCubit>(create: (context) => ThemeCubit())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 900),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: context.watch<ThemeCubit>().currentTheme,
          routerConfig: router,
        );
      },
    );
  }
}
