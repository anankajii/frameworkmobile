import 'package:get/get.dart';
import '../model/product.dart';

class PurchaseController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));

    var serverResponse = [
      Product(
        id: 1,
        name: "Demo Product 1",
        description: "This is demo product 1",
        price: 30000,
        image: "https://picsum.photos/200",
      ),
      Product(
        id: 2,
        name: "Demo Product 2",
        description: "This is demo product 2",
        price: 45000,
        image: "https://picsum.photos/201",
      ),
      Product(
        id: 3,
        name: "Demo Product 3",
        description: "This is demo product 3",
        price: 50000,
        image: "https://picsum.photos/202",
      ),
    ];

    products.value = serverResponse;
  }
}