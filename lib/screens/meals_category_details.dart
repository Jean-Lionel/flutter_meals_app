import 'package:flutter/material.dart';
import '../models/meal.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectMeal.imageUrl),
            ),
            barWidget(context, 'Ingredints'),
            barListView(
              ListView.builder(
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
                  itemCount: selectMeal.ingredients.length),
            ),
            barWidget(context, 'Steps'),
            barListView(ListView.builder(
              itemBuilder: (ctx, index) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text(selectMeal.steps[index]),
                  ),
                  const Divider(
                    height: 10,
                    thickness: 5,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.black12,
                  ),
                ],
              ),
              itemCount: selectMeal.steps.length,
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Bonjour");
        },
        child: const Icon(Icons.delete),
      ),
    );
  }

  Widget barWidget(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget barListView(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: double.infinity,
      child: child,
    );
  }
}
