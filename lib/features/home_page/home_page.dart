import 'package:flutter/material.dart';
import 'package:food_app/core/theme/app_colors.dart';

import 'widget/my_drawer.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
key: _scaffoldKey,
      appBar: AppBar(

        backgroundColor: AppColors.primaryColor,
        title: Text("Home Page", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white, // Change this to your desired color
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),

      ),
      drawer: MyDrawer(),
    );
  }
}
