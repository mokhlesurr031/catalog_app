class Item {
  final String id;
  final String name;
  final String? description;
  final num price;
  final String? color;
  final String? image;

  Item(
      {required this.id,
      required this.name,
      this.description,
      required this.price,
      this.color,
      this.image});
}
