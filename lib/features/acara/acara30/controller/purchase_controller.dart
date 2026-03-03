import 'package:get/get.dart';
import '../model/product.dart';

class PurchaseController30 extends GetxController {

  var products = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {

    await Future.delayed(const Duration(seconds: 1));

    var serverResponse = [
      Product("Demo Product 1", "Product Description", 300.0),
      Product("Demo Product 2", "Product Description", 400.0),
      Product("Demo Product 3", "Product Description", 500.0),
    ];

    products.value = serverResponse;
  }
}