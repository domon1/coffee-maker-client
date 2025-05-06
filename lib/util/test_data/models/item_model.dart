class ItemModel {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final int cost;

  ItemModel(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.cost,
      required this.description});
}
