import 'package:flutter/material.dart';
import "../data/dummy_data.dart";

class CategoryMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routerParms =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String categoryId = routerParms["id"] as String;
    final String categoryName = routerParms["title"] as String;
    final categoriesMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(categoriesMeals[index].title);
        },
        itemCount: categoriesMeals.length,
      ),
    );
  }
}
