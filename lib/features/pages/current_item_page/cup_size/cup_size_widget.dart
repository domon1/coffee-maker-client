import 'package:flutter/material.dart';

class CupSizeWidget extends StatelessWidget {
  const CupSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text("S"),
      ),
    );
  }
}
