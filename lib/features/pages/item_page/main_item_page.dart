import 'package:coffe_maker_project/features/scroller/big_horizontal_scroller.dart';
import 'package:coffe_maker_project/features/scroller/small_horizontal_scroller.dart';
import 'package:flutter/material.dart';

class MainItemPage extends StatefulWidget {
  const MainItemPage({super.key});

  @override
  State<MainItemPage> createState() => _MainItemPageState();
}

class _MainItemPageState extends State<MainItemPage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Популярные напитки",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SmallHorizontalScroller(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Новое для тебя",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BigHorizontalScroller(),
          SizedBox(
            height: 15,
          ),
          Text(
            "Весенний вкус",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SmallHorizontalScroller(),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
