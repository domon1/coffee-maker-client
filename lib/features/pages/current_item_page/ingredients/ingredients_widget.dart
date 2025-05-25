import 'package:coffe_maker_project/util/test_data/models/ingredient_model.dart';
import 'package:flutter/material.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({super.key, required this.ingredient});

  final IngredientModel ingredient;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
                child: Image.asset(
              "assets/images/${ingredient.imageUrl}",
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error),
            )),
            Expanded(
              flex: 1,
              child: Text(
                ingredient.name,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text("+ ${ingredient.price} ₽"),
            )
          ],
        ),
      ),
    );
  }
}
