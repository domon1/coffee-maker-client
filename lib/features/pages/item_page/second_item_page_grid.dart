import 'package:coffe_maker_project/features/scroller/grid_item_scroller.dart';
import 'package:flutter/material.dart';

class SecondItemPageGrid extends StatefulWidget {
  const SecondItemPageGrid({super.key});

  @override
  State<SecondItemPageGrid> createState() => _SecondItemPageGridState();
}

class _SecondItemPageGridState extends State<SecondItemPageGrid> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Авторский кофе",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridItemScroller(),
      ],
    );
  }
}
