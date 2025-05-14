import 'package:coffe_maker_project/features/pages/current_item_page/ingredients/ingredients_widget.dart';
import 'package:coffe_maker_project/util/test_data/models/item_extras.dart';
import 'package:flutter/material.dart';

class IngredientsBuilder extends StatelessWidget {
  const IngredientsBuilder({super.key, required this.ingredients});

  final List<ItemExtras> ingredients;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: ingredients.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        return IngredientsWidget(ingredient: ingredients[index],);
      },
    );
  }
}
