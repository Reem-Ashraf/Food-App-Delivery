import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/app_routting/app_router.dart';
import 'package:food_app/core/theme/app_colors.dart';
import 'package:food_app/core/theme/cubit/theme_cubit.dart';
import 'package:food_app/core/theme/cubit/theme_state.dart';
import 'package:food_app/features/home_page/widget/my_drawer_list_tile.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.push(AppPath.home);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: AppColors.primaryColor,
        title: const Text('Settings', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context,state) {
              final isDark = state.themeMode == ThemeMode.dark;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.darkBrown),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: MyDrawerListTile(

                    icon: isDark ? Icons.light_mode : Icons.dark_mode,
                    title: isDark? 'Dark Mode': 'Light Mode',
                    isSwitch: true,
                    switchValue: isDark,
                    onSwitchChanged: (value) {
                      // setState(() {
                      //   isDarkMode = value;
                      // });
                      // Add your dark mode logic here
                      context.read<ThemeCubit>().toggleTheme();
                    },
                  ),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
