import 'package:food_app/domain/models/food_model.dart';
import 'package:food_app/features/auth/login_page.dart';
import 'package:food_app/features/home_page/food_page.dart';

import 'package:food_app/features/home_page/home_page.dart';
import 'package:food_app/features/setting_page/setting_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: AppPath.home, builder: (context, state) => HomePage()),
    GoRoute(
      path: AppPath.login,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: AppPath.setting,
      builder: (context, state) => const SettingPage(),
    ),
    GoRoute(
      path: AppPath.foodPage,
      builder: (context, state) {
        final food = state.extra as FoodModel;
        return FoodPage(foodModel: food);
      },
    ),
  ],
);

//app path's
class AppPath {
  static const String home = "/home";
  static const String login = "/";
  static const String setting = "/setting";
  static const String foodPage = "/foodPage";
}
