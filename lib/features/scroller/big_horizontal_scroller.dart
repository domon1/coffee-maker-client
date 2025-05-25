import 'package:coffe_maker_project/features/card/big_item_card.dart';
import 'package:coffe_maker_project/util/test_data/test_data.dart';
import 'package:flutter/material.dart';

class BigHorizontalScroller extends StatelessWidget {
  const BigHorizontalScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 305,
      width: double.infinity,
      child: ListView.builder(
        itemCount: newsItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: BigItemCard(item: newsItems[index],),
          );
        },
      ),
    );
  }
}