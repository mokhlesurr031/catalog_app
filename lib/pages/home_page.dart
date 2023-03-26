import "package:flutter/material.dart";
import "package:flutter_catalog/models/catalog.dart";
import "package:flutter_catalog/widgets/drawer.dart";

import "../widgets/item_widget.dart";

class HomePage extends StatelessWidget {
  int days = 25;
  String name = "Mahin";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
