import 'package:coffe_maker_project/util/routes/routes.dart';
import 'package:coffe_maker_project/util/theme/theme.dart';
import 'package:flutter/material.dart';

class CoffeeMaker extends StatefulWidget {
  const CoffeeMaker({super.key});

  @override
  State<CoffeeMaker> createState() => _CoffeeMakerState();
}

class _CoffeeMakerState extends State<CoffeeMaker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Maker',
      debugShowCheckedModeBanner: false,
      theme: theme,
      routes: routes,
    );
  }
}