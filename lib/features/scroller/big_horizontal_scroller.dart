import 'package:coffe_maker_project/features/card/big_item_card.dart';
import 'package:flutter/material.dart';

class BigHorizontalScroller extends StatelessWidget {
  const BigHorizontalScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 305,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 10, bottom: 10),
            child: BigItemCard(),
          );
        },
      ),
    );
  }
}