import 'package:flutter/material.dart';
import "./data/dummy_data.dart";
import "./models/category.dart";
import "category_item.dart";

class CategorieScreen extends StatelessWidget {
  const CategorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App Meal')),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((e) => CategoryItem(
                  e.title,
                  e.color as Color,
                ))
            .toList(),
      ),
    );
  }
}
