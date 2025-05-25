import 'package:flutter/material.dart';

class NormalWideItemCard extends StatelessWidget {
  const NormalWideItemCard({super.key});

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
          padding: const EdgeInsets.all(5),
          width: 405,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Positioned.fill(
                    child: Image.asset(
                  "assets/images/latte.jpeg",
                  fit: BoxFit.cover,
                )),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                      child: Text(
                        "Латте",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    SizedBox(height: 15,),
                    SizedBox(
                      width: 70,
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
              )
            ],
          )),
    );
  }
}
