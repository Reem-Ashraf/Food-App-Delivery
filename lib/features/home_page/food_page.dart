import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/constants/spacing.dart';
import 'package:food_app/domain/models/food_model.dart';


class FoodPage extends StatelessWidget {
  const FoodPage({super.key, required this.foodModel});
  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CachedNetworkImage(
            imageUrl: foodModel.image,
            placeholder: (context, url) => CircularProgressIndicator(),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodModel.name,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 70.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace7,
                Text(
                  '\$${foodModel.price.toString()}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 50.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  foodModel.description,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 50.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace10,
                Divider(
                  color: Theme.of(context).colorScheme.primary,
                  thickness: 2,
                  height: 2,
                  indent: 2,
                  endIndent: 2,
                ),
                verticalSpace10,
                Text(
                  "Add-ons",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 55.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace8,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      width: 4.w,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: foodModel.addons.length,
                    itemBuilder: (context, index) {
                      final addon = foodModel.addons[index];
                      return CheckboxListTile(
                        title: Text(addon.name),
                        subtitle: Text(addon.price.toString()),
                        value: false,
                        onChanged: (bool? value) {},
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
