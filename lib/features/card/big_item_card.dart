import 'package:coffe_maker_project/features/pages/current_item_page/current_item_page.dart';
import 'package:coffe_maker_project/util/test_data/models/item_model.dart';
import 'package:coffe_maker_project/util/test_data/test_data.dart';
import 'package:flutter/material.dart';

class BigItemCard extends StatelessWidget {
  const BigItemCard({super.key, required this.item});
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
        child: SizedBox(
          width: 270,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: SizedBox(
                  height: 225,
                  width: double.infinity,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomStart,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(item.name),
                ),
              ),
              SizedBox(
                height: 30,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${item.cost} ₽"),
                      const Icon(Icons.add_outlined)
                    ],
                  ),
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
