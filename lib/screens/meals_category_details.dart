import 'package:flutter/material.dart';

class MealDetails extends StatelessWidget {
  static const String routeName = '/mealDetails';

  const MealDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Details $id'),
      ),
      body: Container(
        child: Text(
          "Helllo $id",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
