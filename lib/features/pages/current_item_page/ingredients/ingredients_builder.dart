import 'package:coffe_maker_project/features/pages/current_item_page/ingredients/ingredients_widget.dart';
import 'package:flutter/material.dart';

class IngredientsBuilder extends StatelessWidget {
  const IngredientsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        return const IngredientsWidget();
      },
    );
  }
}
