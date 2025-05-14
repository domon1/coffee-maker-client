class ItemCartModel {
  final String imagePath;
  final String name;
  final String size;
  final int price;
  final List<String> additions;

  ItemCartModel ({
    required this.imagePath,
    required this.name,
    required this.size,
    required this.price,
    required this.additions
  });
}