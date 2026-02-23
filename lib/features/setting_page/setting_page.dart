import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/core/app_routting/app_router.dart';
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
          icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Settings',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              final isDark = state.themeMode == ThemeMode.dark;
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).colorScheme.secondary),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: MyDrawerListTile(
                    icon: isDark ? Icons.light_mode : Icons.dark_mode,
                    title: isDark ? 'Dark Mode' : 'Light Mode',
                    isSwitch: true,
                    switchValue: isDark,
                    onSwitchChanged: (value) {
                      context.read<ThemeCubit>().toggleTheme();
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
