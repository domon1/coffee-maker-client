import 'package:coffe_maker_project/features/pages/current_item_page/ingredients/ingredients_builder.dart';
import 'package:flutter/material.dart';

Future<dynamic> extrasModalBottonSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return const FractionallySizedBox(
          heightFactor: 0.5,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Посыпки",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: IngredientsBuilder(),
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