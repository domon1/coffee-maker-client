import 'package:coffe_maker_project/features/appbar/coffee_maker_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 1,
      length: 7,
      child: Scaffold(
        appBar: CoffeeMakerAppbar(preferredSize: Size.fromHeight(80)),
        body: TabBarView(children: [
          Center(child: Text("Soon later.")),
          Center(child: Text("Soon later..")),
          Center(child: Text("Soon later...")),
          Center(child: Text("Soon later....")),
          Center(child: Text("Soon later.....")),
          Center(child: Text("Soon later......")),
          Center(child: Text("Soon later.......")),
        ]),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Center(child: Text("Main Page"))
        //   ],
        // ),
      ),
    );
  }
}