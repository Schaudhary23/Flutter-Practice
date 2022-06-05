import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/GetX/cart_controller.dart';
import 'package:flutter_training/GetX/model.dart';
import 'package:flutter_training/GetX/shopping_controller.dart';
import 'package:flutter_training/GetX/user_cart_screen.dart';
import 'package:get/get.dart';

class ProductsCatalog extends StatefulWidget {
  const ProductsCatalog({Key? key}) : super(key: key);

  @override
  State<ProductsCatalog> createState() => _ProductsCatalogState();
}

class _ProductsCatalogState extends State<ProductsCatalog> {
  final shoppingController = Get.put(ShoppingController());

  final userCartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Catalog'),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 6.0),
              child: Badge(
                toAnimate: false,
                child: const Icon(Icons.shopping_cart),
                badgeContent: GetX<CartController>(
                  builder: ((controller) {
                    return Text(
                      controller.selectedProducts.length.toString(),
                      style:
                          const TextStyle(color: Colors.white, fontSize: 14.0),
                    );
                  }),
                ),
              ),
            ),
            onTap: () {
              Get.to(const UserCartScreen());
            },
          )
        ],
      ),
      body: GetX<ShoppingController>(
        builder: ((controller) {
          return ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(controller.products[index].imageUrl),
                  title: Text(controller.products[index].productName),
                  subtitle: Text(controller.products[index].price.toString()),
                  trailing: ElevatedButton(
                    child: const Text('Add'),
                    onPressed: () {
                      userCartController
                          .addProductToCart(controller.products[index]);
                    },
                  ),
                );
              });
        }),
      ),
    );
  }
}

// class AddItemButton extends StatefulWidget {
//   final Product product;
//   const AddItemButton({Key? key, required this.product}) : super(key: key);

//   @override
//   State<AddItemButton> createState() => _AddItemButtonState();
// }

// class _AddItemButtonState extends State<AddItemButton> {
//   @override
//   Widget build(BuildContext context) {
//     final userCartController = Get.put(CartController());

//     GetX<CartController>(builder: ((controller) {
//       return isProductExistsInCart = userCartController.selectedProducts.contains(widget.product);
//     }));
//     return GetX<CartController>(
//       builder: ((controller) {
//         return isProductExistsInCart
//              ? const Icon(Icons.check)
//              : ElevatedButton(
//                  onPressed: () {
//                    userCartController.addProductToCart(widget.product);
//                  },
//                  child: const Text('Add'));
//       }),
//     );
//   }
// }
