import 'package:coffe_maker_project/features/pages/cart_page/cart_item.dart';
import 'package:coffe_maker_project/util/test_data/models/item_cart_model.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Корзина"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.delete),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.close),
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) { 
          return CartItem(item: ItemCartModel(imagePath: "assets/images/latte.jpeg", name: "Латте", size: "350 мл", price: "360 p", additions: [
              "Цитрусовый чипс",
              "Карамельный сироп",
              "Двойная порция эспрессо",
              "Кокосовое молоко",
            ]));
        },
      ),
    );
  }
}
