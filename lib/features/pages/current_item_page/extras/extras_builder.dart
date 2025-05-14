import 'package:coffe_maker_project/features/pages/current_item_page/extras/extras_widget.dart';
import 'package:coffe_maker_project/util/test_data/models/item_extras.dart';
import 'package:flutter/material.dart';

class ExtrasBuilder extends StatelessWidget {
  const ExtrasBuilder({super.key, required this.extras});
  //static const int itemCount = 3;
  static const int itemWidth = 80;
  static const int padding = 10;

  final List<List<ItemExtras>> extras;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 80,
        width: double.infinity,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            width: (MediaQuery.sizeOf(context).width -
                    extras.length * itemWidth -
                    padding * 2) /
                (extras.length - 1),
          ),
          scrollDirection: Axis.horizontal,
          itemCount: extras.length,
          itemBuilder: (context, index) {
            return ExtrasWidget(extras: extras[index],);
          },
        ),
      ),
    );
  }
}
