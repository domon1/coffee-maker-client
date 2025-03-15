import 'package:coffe_maker_project/routes/routes.dart';
import 'package:coffe_maker_project/theme/theme.dart';
import 'package:flutter/material.dart';

class CoffeMaker extends StatefulWidget {
  const CoffeMaker({super.key});

  @override
  State<CoffeMaker> createState() => _CoffeMakerState();
}

class _CoffeMakerState extends State<CoffeMaker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffe Maker',
      debugShowCheckedModeBanner: false,
      theme: theme,
      routes: routes,
    );
  }
}