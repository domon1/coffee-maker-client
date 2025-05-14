import 'package:coffe_maker_project/features/pages/cart_page/cart_item.dart';
import 'package:coffe_maker_project/util/test_data/models/item_cart_model.dart';
import 'package:coffe_maker_project/util/test_data/test_data.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late int _totalPrice = 0;

  void _calculateTotalPrice() {
    int total = 0;
    for (var value in items) {
      total += value.price;
    }
    setState(() {
      _totalPrice = total;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calculateTotalPrice();
    });
  }

  List<ItemCartModel> items = carts;
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
      body: Column(
        children: [
          Flexible(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                      _calculateTotalPrice();
                    });
                  },
                  background: Container(
                    color: Colors.red,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerRight,
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  child: CartItem(item: items[index]),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Способ оплаты"),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.credit_card_outlined),
                                      Text(
                                        "Добавить карту",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("Итого"),
                              Text(
                                "$_totalPrice ₽",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Visibility(
                        visible: _totalPrice > 0 ? true : false,
                        child: SizedBox(
                          width: double.infinity,
                          child: TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll<Color>(Colors.blue),
                                padding: WidgetStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 10))),
                            child: const Text(
                              "Оплатить",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
