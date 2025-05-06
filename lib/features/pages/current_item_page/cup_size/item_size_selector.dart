import 'package:coffe_maker_project/features/pages/current_item_page/cup_size/item_size_widget.dart';
import 'package:coffe_maker_project/util/test_data/models/item_size.dart';
import 'package:flutter/material.dart';

class ItemSizeSelector extends StatelessWidget {
  const ItemSizeSelector({
    super.key,
    required this.sizes,
    required this.selectedSizeId,
    required this.onSizeSelected,
  });

  final List<ItemSize> sizes;
  final int selectedSizeId;
  final ValueChanged<int> onSizeSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: sizes.asMap().entries.map((entry) {
            final index = entry.key;
            final size = entry.value;
            return ItemSizeWidget(
                onSizeSelected: onSizeSelected,
                index: index,
                selectedSizeId: selectedSizeId,
                size: size);
          }).toList(),
        ),
      ),
    );
  }
}
