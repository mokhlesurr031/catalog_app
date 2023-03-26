import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_detail_page.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeDetailPage(catalog: catalog),
              )),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(image: catalog.image),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.xl.color(MyTheme.darkBluishColor).bold.make(),
            12.heightBox,
            Column(
              children: const [
                // catalog.description.text.textStyle(context.captionStyle).make(),
                Text(
                  "Click to see description...",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Vx.blue900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            18.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "BDT ${catalog.price}".text.bold.lg.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyTheme.darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Add to cart".text.make(),
                )
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).white.roundedSM.square(160).make().py16();
  }
}
