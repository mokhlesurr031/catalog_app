class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro aa",
      price: 999,
      description: "Apple iPhone is very good",
      color: "#33505a",
      image:
          "https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
}
