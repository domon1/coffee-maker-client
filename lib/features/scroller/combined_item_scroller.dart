import 'package:coffe_maker_project/features/card/normal_item_card.dart';
import 'package:coffe_maker_project/features/card/normal_wide_item_card.dart';
import 'package:coffe_maker_project/util/test_data/test_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CombinedItemScroller extends StatelessWidget {
  const CombinedItemScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.custom(
          gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              pattern: [
                const QuiltedGridTile(1, 2),
                const QuiltedGridTile(1, 1),
                const QuiltedGridTile(1, 1),
                const QuiltedGridTile(1, 1),
                const QuiltedGridTile(1, 1),
              ]),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: newsItems.length,
            (context, index) {
              if (index % 5 != 0) {
                return NormalItemCard(item: newsItems[index],);
              } else {
                return NormalWideItemCard(item: newsItems[index],);
              }
            } 
          ),
        ),
      ),
    );
  }
}