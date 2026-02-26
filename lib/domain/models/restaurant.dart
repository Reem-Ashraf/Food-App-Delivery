import 'package:food_app/domain/models/food_model.dart';

class Restaurant {
  List<FoodModel> menu = [
    // ================== BURGERS ==================
    FoodModel(
      name: "Classic Cheeseburger",
      description:
          "Juicy grilled beef patty with melted cheddar cheese, lettuce, tomato, and pickles.",
      image: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd",
      price: 80,
      category: FoodCategory.burgers,
      addons: [
        Addon(name: "Extra Cheese", price: 10),
        Addon(name: "Bacon", price: 15),
        Addon(name: "Mushrooms", price: 8),
      ],
    ),

    FoodModel(
      name: "Chicken Burger",
      description:
          "Crispy fried chicken breast with lettuce and special sauce.",
      image: "https://images.unsplash.com/photo-1606755962773-d324e0a13086",
      price: 75,
      category: FoodCategory.burgers,
      addons: [
        Addon(name: "Extra Sauce", price: 5),
        Addon(name: "Cheese Slice", price: 10),
      ],
    ),

    // ================== SALADS ==================
    FoodModel(
      name: "Caesar Salad",
      description:
          "Fresh romaine lettuce with grilled chicken, croutons, and Caesar dressing.",
      image: "https://images.unsplash.com/photo-1550304943-4f24f54ddde9",
      price: 65,
      category: FoodCategory.salads,
      addons: [
        Addon(name: "Extra Chicken", price: 15),
        Addon(name: "Extra Dressing", price: 5),
      ],
    ),

    FoodModel(
      name: "Greek Salad",
      description: "Tomatoes, cucumbers, olives, feta cheese, and olive oil.",
      image: "https://www.tasteofhome.com/wp-content/uploads/2025/02/Favorite-Mediterranean-Salad_EXPS_TOHcom25_41556_MD_P2_02_05_1b.jpg?fit=750%2C750",
      price: 60,
      category: FoodCategory.salads,
      addons: [Addon(name: "Feta Cheese", price: 10)],
    ),

    // ================== SIDES ==================
    FoodModel(
      name: "French Fries",
      description: "Golden crispy fries with a pinch of salt.",
      image: "https://images.unsplash.com/photo-1541592106381-b31e9677c0e5",
      price: 30,
      category: FoodCategory.sides,
      addons: [
        Addon(name: "Cheese Dip", price: 7),
        Addon(name: "BBQ Sauce", price: 5),
      ],
    ),

    FoodModel(
      name: "Onion Rings",
      description: "Crispy battered onion rings served hot.",
      image: "https://images.unsplash.com/photo-1612874742237-6526221588e3",
      price: 35,
      category: FoodCategory.sides,
      addons: [Addon(name: "Spicy Sauce", price: 5)],
    ),

    // ================== DESSERTS ==================
    FoodModel(
      name: "Chocolate Cake",
      description:
          "Rich and moist chocolate cake topped with chocolate ganache.",
      image: "https://images.unsplash.com/photo-1578985545062-69928b1d9587",
      price: 50,
      category: FoodCategory.desserts,
      addons: [Addon(name: "Ice Cream Scoop", price: 10)],
    ),

    FoodModel(
      name: "Ice Cream",
      description: "Vanilla ice cream with chocolate syrup.",
      image: "https://images.unsplash.com/photo-1563805042-7684c019e1cb",
      price: 40,
      category: FoodCategory.desserts,
      addons: [
        Addon(name: "Caramel Sauce", price: 5),
        Addon(name: "Sprinkles", price: 3),
      ],
    ),

    // ================== DRINKS ==================
    FoodModel(
      name: "Coca Cola",
      description: "Refreshing cold Coca Cola.",
      image: "https://images.unsplash.com/photo-1580910051074-3eb694886505",
      price: 20,
      category: FoodCategory.drink,
      addons: [],
    ),

    FoodModel(
      name: "Orange Juice",
      description: "Freshly squeezed orange juice.",
      image: "https://images.unsplash.com/photo-1600271886742-f049cd451bba",
      price: 25,
      category: FoodCategory.drink,
      addons: [],
    ),
  ];
}
