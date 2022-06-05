import 'package:flutter/material.dart';
import 'package:flutter_training/GetX/cart_controller.dart';
import 'package:get/get.dart';

class UserCartScreen extends StatelessWidget {
  const UserCartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User Cart'),
        ),
        body: GetX<CartController>(
          builder: ((controller) {
            return Column(children: [
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: controller.selectedProducts.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: Image.network(
                            controller.selectedProducts[index].imageUrl,
                          ),
                        ),
                        Expanded(
                          child: Text(
                              controller.selectedProducts[index].productName),
                        ),
                        Expanded(
                          child: Text(
                              controller.selectedProducts[index].price
                                  .toString(),
                              softWrap: true),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              ElevatedButton(
                                child: const Icon(Icons.add),
                                onPressed: () {
                                  controller.addProductToCart(
                                      controller.selectedProducts[index]);
                                },
                              ),
                              //
                              Text(controller.v.string),
                              ElevatedButton(
                                child: const Icon(Icons.remove),
                                onPressed: () {},
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    controller.removeProductsFromCart(
                                        controller.selectedProducts[index]);
                                  },
                                  child: const Text('Remove')),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Expanded(
                  child: Text(
                'Total Price : Rs. ${controller.totalCost}',
                style: const TextStyle(fontSize: 30.0),
              ))
            ]);
          }),
        ));
  }
}
