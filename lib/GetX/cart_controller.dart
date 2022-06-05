import 'package:flutter_training/GetX/model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<Product> selectedProducts = <Product>[].obs;
  List<Product> perticularProducts = <Product>[].obs;
  var v = 0.obs;
  void addProductToCart(Product product) {
    selectedProducts.add(product);
  }

  void removeProductsFromCart(Product product) {
    selectedProducts.remove(product);
  }

  double get totalCost => selectedProducts.fold(
      0, (total, selectedProduct) => total + selectedProduct.price);

  void quantity(Product product) {
    var temp = product.productName;
    for (var i in selectedProducts) {
      if (i.productName == temp) {
        v++;
      }
    }
  }
}
