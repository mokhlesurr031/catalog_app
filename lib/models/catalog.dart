import 'dart:ffi';

class Item {
  final int id;
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

final product = [
  Item(
    id: 1,
    name: "iPhone 12 Pro",
    price: 999,
    description: "Apple iPhone is very good",
    color: "#33505a",
    image:
        "https://www.bing.com/images/search?view=detailV2&ccid=nPiQbY%2bK&id=1701BBA043EFEBBEBA3B2E47C22A8F5AAB911754&thid=OIP.nPiQbY-KhdWclK_oceQeLQHaEL&mediaurl=https%3a%2f%2ffdn.gsmarena.com%2fimgroot%2fnews%2f20%2f10%2fiphone-12-roundup%2f-1200%2fgsmarena_001.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.9cf8906d8f8a85d59c94afe871e41e2d%3frik%3dVBeRq1qPKsJHLg%26pid%3dImgRaw%26r%3d0&exph=676&expw=1200&q=iphone+12+pro+max&simid=608045882162230194&FORM=IRPRST&ck=2768E79D96CBC1C02CFBFA1A2315AC32&selectedIndex=50",
  )
];
