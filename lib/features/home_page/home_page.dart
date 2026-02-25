import 'package:flutter/material.dart';
import 'package:food_app/features/home_page/widget/my_current_location.dart';
import 'package:food_app/features/home_page/widget/my_sliver_app_bar.dart';

import 'widget/my_description_box.dart';
import 'widget/my_divider.dart';
import 'widget/my_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      key: _scaffoldKey,
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyDivider(),

                MyCurrentLocation(),

                MyDescriptionBox(),
              ],
            ),
            title: Text("Title"),
          ),
        ],
        body: Container(color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
