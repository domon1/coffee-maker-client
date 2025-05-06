import 'package:coffe_maker_project/features/pages/current_item_page/cup_size/item_size_selector.dart';
import 'package:coffe_maker_project/features/pages/current_item_page/extras/extras_builder.dart';
import 'package:coffe_maker_project/util/test_data/models/item_model.dart';
import 'package:coffe_maker_project/util/test_data/models/item_size.dart';
import 'package:flutter/material.dart';

class CurrentItemPage extends StatefulWidget {
  const CurrentItemPage({super.key, required this.item, required this.sizes});

  final ItemModel item;
  final List<ItemSize> sizes;

  @override
  State<CurrentItemPage> createState() => _CurrentItemPageState();
}

class _CurrentItemPageState extends State<CurrentItemPage> {
  int sizeId = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          "assets/images/${widget.item.imageUrl}",
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                widget.item.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Text(
                "Настрой как любишь",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ExtrasBuilder()],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Размер кружки",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              ItemSizeSelector(
                sizes: widget.sizes,
                selectedSizeId: sizeId,
                onSizeSelected: (newSizeId) {
                  setState(() {
                    sizeId = newSizeId;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Описание",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Text(widget.item.description),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                      "+ ${widget.item.cost + widget.sizes[sizeId].addPrice} ₽"))
            ],
          ),
        ),
      ),
    );
  }
}
