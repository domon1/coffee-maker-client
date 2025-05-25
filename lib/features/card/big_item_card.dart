import 'package:flutter/material.dart';

class BigItemCard extends StatelessWidget {
  const BigItemCard({super.key});

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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Отличный выбор в любую погоду"),
              ),
            ),
            const SizedBox(
              height: 30,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("280 ₽"),
                    Icon(Icons.add_outlined)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
