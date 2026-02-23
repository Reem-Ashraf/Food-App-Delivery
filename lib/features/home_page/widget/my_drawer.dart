import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/app_routting/app_router.dart';
import 'package:food_app/core/constants/app_assets.dart';
import 'package:food_app/core/constants/spacing.dart';
import 'package:food_app/features/home_page/widget/my_drawer_list_tile.dart';
import 'package:go_router/go_router.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Column(

        children: <Widget>[
          verticalSpace20,
          Container(
            height: 150.h, // Adjust this height as needed
            padding: const EdgeInsets.all(16),
            child: Image.asset(AppAssets.imgLoginBg),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Divider(),
          ),
          MyDrawerListTile(
            icon: Icons.home,
            title: 'H O M E',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          MyDrawerListTile(
            icon: Icons.settings,
            title: 'S E T T I N G S',
            onTap: () {
              context.go(AppPath.setting);
            },
          ),
          Spacer(),
          Spacer(),
          MyDrawerListTile(
            icon: Icons.logout,
            title: 'L O G  O U T',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          verticalSpace20,
        ],
      ),
    );
  }
}