import 'package:coffe_maker_project/features/card/smal_item_card.dart';
import 'package:flutter/material.dart';

class SmallHorizontalScroller extends StatelessWidget {
  const SmallHorizontalScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 10),
            child: SmalItemCard(),
          );
        },
      ),
    );
  }
}