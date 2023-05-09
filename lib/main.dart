import 'package:flutter/material.dart';
import 'package:flutter_latihan_mealapp/recipe_screen.dart';
import 'categories_screen.dart';
import 'recipe_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: CategoriesScreen.id,
        routes: {
          CategoriesScreen.id: (context) => const CategoriesScreen(),
          RecipeScreen.id: (context) => const RecipeScreen(),
        }
        // home: const MealApp(title: 'Meal App'),
        // home: const CategoriesScreen(),
        );
  }
}
