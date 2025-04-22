import 'package:coffe_maker_project/features/card/normal_item_card.dart';
import 'package:flutter/material.dart';

class GridItemScroller extends StatelessWidget {
  const GridItemScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return const NormalItemCard();
          },
        ),
      ),
    );
  }
}
