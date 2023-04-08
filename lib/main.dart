import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';
import './screens/meals_category_details.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deal Meals',
      theme: ThemeData(
        primaryColor: Colors.pink,
        appBarTheme: const AppBarTheme(
          color: Colors.pink,
        ),
        secondaryHeaderColor: Color.fromARGB(255, 249, 146, 180),
        canvasColor: Color.fromARGB(221, 252, 241, 241),
        fontFamily: 'Raleway',
        textTheme: const TextTheme(
            titleLarge: TextStyle(
          fontSize: 24,
        )),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.amber)
            .copyWith(secondary: Color.fromARGB(255, 88, 12, 38)),
      ),
      //home: const CategorieScreen(),
      initialRoute: '/',
      routes: {
        '/': (_) => TabScreen(),
        CategorieScreen.routeName: (ctx) => CategoryMealScreen(),
        MealDetails.routeName: (ctx) => MealDetails(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
      onUnknownRoute: ((settings) {
        print("Je suis en bonne du forme ");
        // Comme 404 dans la programmation web
        return MaterialPageRoute(builder: (_) => CategorieScreen());
      }),
    );
  }
}
