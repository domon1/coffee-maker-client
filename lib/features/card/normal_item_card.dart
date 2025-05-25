import 'package:flutter/material.dart';

class NormalItemCard extends StatelessWidget {
  const NormalItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      margin: const EdgeInsets.only(right: 5),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: SizedBox(
                height: 100,
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
                height: 25,
                width: double.infinity,
                child: Text(
                  "Латте",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      overflow: TextOverflow.ellipsis),
                )),
            const SizedBox(
              height: 25,
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
            ),
          ],
        ),
      ),
    );
  }
}
