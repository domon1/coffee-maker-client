import 'package:coffe_maker_project/features/appbar/coffee_maker_appbar.dart';
import 'package:coffe_maker_project/features/pages/item_page/main_item_page.dart';
import 'package:coffe_maker_project/features/pages/item_page/second_item_page_combined.dart';
import 'package:coffe_maker_project/features/pages/item_page/second_item_page_grid.dart';
import 'package:coffe_maker_project/util/test_data/test_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 7,
      child: Scaffold(
        appBar: CoffeeMakerAppbar(preferredSize: const Size.fromHeight(80), userProfile: mainUser,),
        body: const TabBarView(children: [
          Center(child: MainItemPage()),
          Center(child: SecondItemPageGrid()),
          Center(child: SecondItemPageCombined()),
          Center(child: Text("Soon later....")),
          Center(child: Text("Soon later.....")),
          Center(child: Text("Soon later......")),
          Center(child: Text("Soon later.......")),
        ]),
      ),
    );
  }
}