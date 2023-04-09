import 'package:flutter/material.dart';
import '../models/meal.dart';
import "../data/dummy_data.dart";
import '../widgets/meal_item.dart';

class CategoryMealScreen extends StatefulWidget {
  @override
  State<CategoryMealScreen> createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  String categoryName = "";
  String categoryId = "";
  List<Meal> categoriesMeals = [];
  @override
  void initState() {
    // TODO: implement initState
    final routerParms =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    categoryId = routerParms["id"] as String;
    categoryName = routerParms["title"] as String;
    categoriesMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    super.initState();
  }

  void _removeMeal(String mealId) {
    setState(() {
      categoriesMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          final meal = categoriesMeals[index];
          return MealItem(
            meal.id,
            meal.title,
            meal.imageUrl,
            meal.duration,
            meal.complexity,
            meal.affordability,
            _removeMeal,
          );
        },
        itemCount: categoriesMeals.length,
      ),
    );
  }
}
