class FoodModel {
  final String name;

  final String description;
  final String image;
  final double price;
  final FoodCategory category;
  final List<Addon> addons;


  FoodModel({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.category,
    required this.addons,
  });
}

enum FoodCategory { burgers, sides, drink, salads, desserts }

class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
