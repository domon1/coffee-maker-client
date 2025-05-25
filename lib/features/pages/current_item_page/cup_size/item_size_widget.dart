import 'package:coffe_maker_project/util/test_data/models/item_size.dart';
import 'package:flutter/material.dart';

class ItemSizeWidget extends StatelessWidget {
  const ItemSizeWidget({
    super.key,
    required this.onSizeSelected,
    required this.index,
    required this.selectedSizeId,
    required this.size,
  });

  final ValueChanged<int> onSizeSelected;
  final int index;
  final int selectedSizeId;
  final ItemSize size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () => onSizeSelected(index),
      child: Container(
        width: 90,
        decoration: BoxDecoration(
          border: Border.all(width: selectedSizeId == index ? 3 : 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            size.name,
            style: TextStyle(
                fontWeight: selectedSizeId == index
                    ? FontWeight.bold
                    : FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
