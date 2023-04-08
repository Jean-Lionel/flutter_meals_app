import 'package:flutter/material.dart';
import 'package:flutter_meals_app/models/meal.dart';
import "../data/dummy_data.dart";

class MealDetails extends StatelessWidget {
  static const String routeName = '/mealDetails';

  const MealDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context)?.settings.arguments as String;
    Meal selectMeal = DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    return Scaffold(
        appBar: AppBar(
          title: Text('${selectMeal.title}'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectMeal.imageUrl),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Ingredients',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 200,
              width: 300,
              child: ListView.builder(
                  itemBuilder: (ctx, index) => Card(
                        color: Theme.of(context).secondaryHeaderColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          child: Text(selectMeal.ingredients[index]),
                        ),
                      ),
                  itemCount: selectMeal.ingredients.length
              ),
            ),
          ],
        ));
  }
}
