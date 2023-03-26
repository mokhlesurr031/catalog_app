import "package:flutter/material.dart";
import "package:flutter_catalog/widgets/themes.dart";

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        title: const Text("Cart"),
      ),
    );
  }
}
