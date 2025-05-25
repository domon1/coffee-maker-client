import 'package:coffe_maker_project/features/card/smal_item_card.dart';
import 'package:coffe_maker_project/util/test_data/models/item_model.dart';
import 'package:flutter/material.dart';

class SmallHorizontalScroller extends StatelessWidget {
  const SmallHorizontalScroller({super.key, required this.items});

  final List<ItemModel> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: double.infinity,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding( 
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: SmalItemCard(item: items[index],),
          );
        },
      ),
    );
  }
}