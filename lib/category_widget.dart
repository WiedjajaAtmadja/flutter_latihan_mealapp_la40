import 'package:flutter/material.dart';
import 'recipe_screen.dart';

class CategoryWidget extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryWidget(this.id, this.title, this.color, {super.key});

  void selectCategory(BuildContext ctx) {
    // Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    //   return RecipeScreen(id, title);
    // }));
    Navigator.of(ctx)
        .pushNamed(RecipeScreen.id, arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(title, style: Theme.of(context).textTheme.titleLarge)),
      ),
    );
  }
}
