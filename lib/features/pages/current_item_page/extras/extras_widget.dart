import 'package:coffe_maker_project/features/pages/current_item_page/extras/extras_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ExtrasWidget extends StatelessWidget {
  const ExtrasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        extrasModalBottonSheet(context);
      },
      child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(20)),
          child: const Center(child: Text("Посыпки"))),
    );
  }

  
}
