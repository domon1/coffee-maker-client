import 'package:coffe_maker_project/features/pages/current_item_page/ingredients/ingredients_builder.dart';
import 'package:coffe_maker_project/util/test_data/models/item_extras.dart';
import 'package:flutter/material.dart';

Future<dynamic> extrasModalBottonSheet(BuildContext context, List<ItemExtras> extras) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return FractionallySizedBox( 
          heightFactor: 0.5,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Посыпки",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: IngredientsBuilder(ingredients: extras),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }