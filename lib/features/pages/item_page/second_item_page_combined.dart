import 'package:coffe_maker_project/features/scroller/combined_item_scroller.dart';
import 'package:flutter/material.dart';

class SecondItemPageCombined extends StatefulWidget {
  const SecondItemPageCombined({super.key});

  @override
  State<SecondItemPageCombined> createState() => _SecondItemPageCombinedState();
}

class _SecondItemPageCombinedState extends State<SecondItemPageCombined> {
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
        CombinedItemScroller(),
        SizedBox(
          height: 15,
        ),
        
      ],
    );
  }
}