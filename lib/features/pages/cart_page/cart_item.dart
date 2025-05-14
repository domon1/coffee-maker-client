import 'package:coffe_maker_project/util/test_data/models/item_cart_model.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
    required this.item
  });

  final ItemCartModel item;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 6,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 70,
                        child: Image.asset(
                          widget.item.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.item.name),
                        Text(widget.item.size),
                        Visibility(
                          visible: widget.item.additions.isEmpty ? false : true,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _isExpanded = !_isExpanded;
                              });
                            },
                            child: Icon(
                              _isExpanded
                                  ? Icons.remove_circle_outline
                                  : Icons.add_circle_outlined,
                              color: Colors.black,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(widget.item.price),
                  ],
                ),
              ),
            ],
          ),
          if (_isExpanded)
            Padding(
              padding:
                  const EdgeInsets.only(left: 80.0), // Отступ для выравнивания
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    widget.item.additions.map((addition) => Text("+ $addition")).toList(),
              ),
            ),
        ],
      ),
    );
}
}