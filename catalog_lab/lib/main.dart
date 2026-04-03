import 'package:flutter/material.dart';

void main() {
  runApp(CatalogApp());
}

class CatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatalogScreen(),
    );
  }
}

class Product {
  final String name;

  Product(this.name);
}

class CatalogScreen extends StatelessWidget {
  final List<Product> products =
      List.generate(10, (index) => Product("Product $index"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog")),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text(products[index].name),
            ),
          );
        },
      ),
    );
  }
}