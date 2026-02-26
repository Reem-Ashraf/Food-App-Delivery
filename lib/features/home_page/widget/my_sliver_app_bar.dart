import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      expandedHeight: 300.h,
      collapsedHeight: 100.h,
      floating: false,
      pinned: true,
      iconTheme: IconThemeData(
        color: Colors.black, // Black drawer icon
      ),

      title: Text(
        "Sunset Diner ",
        style: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
          fontSize: 80.sp, // Already converted to responsive
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
      ],
      centerTitle: true,

      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 0, right: 0, top: 0),
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        expandedTitleScale: 1,
      ),
    );
  }
}
