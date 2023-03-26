import "package:flutter/material.dart";
import "package:flutter_catalog/widgets/drawer.dart";

class HomePage extends StatelessWidget {
  int days = 25;
  String name = "Mahin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutter with $name"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
