import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  static const id = '/recipe_screen';
  // final String categoryId;
  // final String categoryTitle;
  // const RecipeScreen(this.categoryId, this.categoryTitle, {super.key});
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    //  final categoryId = routeArgs['id']!;
    final categoryTitle = routeArgs['title']!;

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: Center(
        child: Text('Recipe for the $categoryTitle'),
      ),
    );
  }
}
