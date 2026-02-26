import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_app/domain/models/food_model.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key,required this.foodModel});
  final FoodModel foodModel ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CachedNetworkImage(
            imageUrl: foodModel.image,
            placeholder: (context, url) => CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
