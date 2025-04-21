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
    return const Scaffold(
      appBar: CoffeeMakerAppbar(preferredSize: Size.fromHeight(50)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Main Page"))
        ],
      ),
    );
  }
}