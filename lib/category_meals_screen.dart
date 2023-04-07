import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final routerParms =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String categoryId = routerParms["id"] as String;
    final String categoryName = routerParms["title"] as String;
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
