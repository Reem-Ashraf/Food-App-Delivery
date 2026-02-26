import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/app_routting/app_router.dart';
import 'package:food_app/domain/models/food_model.dart';
import 'package:food_app/features/home_page/widget/my_current_location.dart';
import 'package:food_app/features/home_page/widget/my_sliver_app_bar.dart';
import 'package:food_app/features/home_page/widget/my_tap_bar.dart';
import 'package:go_router/go_router.dart';

import 'cubit/home_page_cubit.dart';
import 'widget/my_description_box.dart';
import 'widget/my_divider.dart';
import 'widget/my_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: FoodCategory.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      key: _scaffoldKey,
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTapBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [MyDivider(), MyCurrentLocation(), MyDescriptionBox()],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: FoodCategory.values.map((category) {
            final foods = context.read<HomePageCubit>().foodItemsByCategory(
              category,
            );

            return ListView.builder(
              itemCount: foods.length,
              itemBuilder: (context, index) {
                final food = foods[index];

                return ListTile(
                  onTap: (){
                    context.push(AppPath.foodPage,extra: food);
                  },
                  leading: CachedNetworkImage(
                    imageUrl: food.image,
                    height: 60.h,
                    width: 200.w,
                  ),
                  title: Text(food.name),
                  subtitle: Text(food.description),
                  trailing: Text("${food.price} EGP"),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
