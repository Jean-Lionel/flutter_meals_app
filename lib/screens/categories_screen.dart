import 'package:flutter/material.dart';
import "../data/dummy_data.dart";
import "../models/category.dart";
import "./../widgets/category_item.dart";
import "../data/dummy_data.dart";

class CategorieScreen extends StatelessWidget {
  static const String routeName = "/categories";
  const CategorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map((e) => CategoryItem(
                e.id,
                e.title,
                e.color as Color,
              ))
          .toList(),
    );
  }
}
