import 'package:coffe_maker_project/features/pages/current_item_page/current_item_page.dart';
import 'package:flutter/material.dart';

class SmalItemCard extends StatelessWidget {
  const SmalItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return const FractionallySizedBox(
              heightFactor: 0.9,
              child: CurrentItemPage(),
            );
          },
        );
      },
      child: Card(
        elevation: 10,
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
                          "assets/images/latte.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Text(
                    "Латте",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        overflow: TextOverflow.ellipsis),
                  )),
              const SizedBox(
                height: 30,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "280 ₽",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Icon(
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
}
