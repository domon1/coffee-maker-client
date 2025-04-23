import 'package:coffe_maker_project/features/pages/current_item_page/extras/extras_widget.dart';
import 'package:flutter/material.dart';

class ExtrasBuilder extends StatelessWidget {
  const ExtrasBuilder({super.key});
  static const int itemCount = 3;
  static const int itemWidth = 80;
  static const int padding = 10;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 80,
        width: double.infinity,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            width: (MediaQuery.sizeOf(context).width -
                    itemCount * itemWidth -
                    padding * 2) /
                (itemCount - 1),
          ),
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return const ExtrasWidget();
          },
        ),
      ),
    );
  }
}
