import 'package:flutter/material.dart';

import '../shopping/product_service.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var products = ProductService().getProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Available Products'),
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: Hero(
                      tag: products[index].productId,
                      child: Image.network(products[index].imageUrl)),
                  title: Text(products[index].productName),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    var product = products[index];
                    Navigator.pushNamed(context, routeName);
                  });
            }));
  }
}
