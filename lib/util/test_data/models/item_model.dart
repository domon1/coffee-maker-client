class ItemModel {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final int cost;
  final String category;

  ItemModel(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.cost,
      required this.description,
      required this.category});
}
