import 'package:coffe_maker_project/features/pages/current_item_page/extras/extras_modal_bottom_sheet.dart';
import 'package:coffe_maker_project/util/test_data/models/item_extras.dart';
import 'package:flutter/material.dart';

class ExtrasWidget extends StatelessWidget {
  const ExtrasWidget({super.key, required this.extras});

  final List<ItemExtras> extras;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        extrasModalBottonSheet(context, extras);
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
