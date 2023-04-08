import 'package:flutter/material.dart';
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
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
        canvasColor: Color.fromARGB(224, 213, 213, 213),
        fontFamily: 'Raleway',
        textTheme: TextTheme(),
      ),
      //home: const CategorieScreen(),
      initialRoute: '/',
      routes: {
        '/': (_) => CategorieScreen(),
        CategorieScreen.routeName: (ctx) => CategoryMealScreen(),
        MealDetails.routeName: (ctx) => MealDetails(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meals Application"),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}