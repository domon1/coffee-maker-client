import 'package:coffe_maker_project/features/pages/current_item_page/current_item_page.dart';
import 'package:coffe_maker_project/util/test_data/models/item_model.dart';
import 'package:coffe_maker_project/util/test_data/test_data.dart';
import 'package:flutter/material.dart';

class SmalItemCard extends StatelessWidget {
  const SmalItemCard({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalCurrentItemPage(context);
      },
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        margin: const EdgeInsets.only(right: 5),
        child: Container(
          padding: const EdgeInsets.all(8),
          width: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          "assets/images/${item.imageUrl}",
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.error);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Text(
                    item.name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        overflow: TextOverflow.ellipsis),
                  )),
              SizedBox(
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${item.cost} ₽",
                      style: const TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.black,
                      size: 10,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> showModalCurrentItemPage(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return FractionallySizedBox(
            heightFactor: 0.9,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: CurrentItemPage(
                item: item,
                sizes: milkCoffeeSizes,
              ),
            ),
          );
        },
      );
  }
}
