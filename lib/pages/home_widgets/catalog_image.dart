import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    print("${image} is Image");
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(MyTheme.creamColor)
        .make()
        .p12()
        .w40(context);
  }
}
