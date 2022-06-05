import 'package:flutter_training/GetX/model.dart';
import 'package:flutter_training/GetX/service_class.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  List<Product> products = <Product>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    products.assignAll(ProductService().getProducts());
  }
}
