import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  final String categoryId;
  final String categoryName;
  CategoryMealScreen(this.categoryId, this.categoryName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: const Center(
        child: Text('Category Menu'),
      ),
    );
  }
}
