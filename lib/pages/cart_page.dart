import "package:flutter/material.dart";
import "package:flutter_catalog/models/cart.dart";
import "package:flutter_catalog/widgets/themes.dart";
import "package:velocity_x/velocity_x.dart";

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Column(
        children: [
          const _CartList().p32().expand(),
          const Divider(),
          _CartTotal(),
        ],
      ),
      // drawer: Drawer(),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "BDT ${_cart.totalPrice}"
              .text
              .xl3
              .color(context.theme.accentColor)
              .make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Order has been placed.".text.make(),
              ));
            },
            style: ButtonStyle(
              backgroundColor:
                  // ignore: deprecated_member_use
                  MaterialStateProperty.all(MyTheme.darkBluishColor),
            ),
            child: "Buy".text.lg.white.make(),
          ).w24(context),
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items?.length,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.done),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: _cart.items[index].name.text.make(),
      ),
    );
  }
}
