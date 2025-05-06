import 'dart:ffi';

class ListItemModel {
  final int id;
  final String name;
  final double price;
  final String imageUrl;

  ListItemModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.imageUrl});

  // TODO add JSON factory
}
