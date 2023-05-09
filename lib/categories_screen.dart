import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'category_widget.dart';

class CategoriesScreen extends StatelessWidget {
  static const id = '/categories_screen';
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Happy Meals')),
      body: GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: dummyCategories
            .map((catData) =>
                CategoryWidget(catData.id, catData.title, catData.color))
            .toList(),
      ),
    );
  }
}
