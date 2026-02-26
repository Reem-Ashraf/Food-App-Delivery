import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/domain/models/food_model.dart';
import 'package:food_app/features/home_page/cubit/home_page_cubit.dart';

class MyTapBar extends StatelessWidget {
  final TabController tabController;
  const MyTapBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(

      dividerColor: Colors.transparent,
      controller: tabController,

      tabs:context.read<HomePageCubit>().categories.map((category) {
      return Tab(
        text: category.name.toUpperCase(),
      );
    }).toList(),
    );
  }
}
