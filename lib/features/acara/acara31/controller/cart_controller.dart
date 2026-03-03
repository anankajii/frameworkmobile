import 'package:get/get.dart';
import '../model/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

  int get count => cartItems.length;

  double get totalAmount =>
      cartItems.fold(0, (sum, item) => sum + item.price);

  void add(Product product) {
    cartItems.add(product);
  }

  void remove(Product product) {
    cartItems.remove(product);
  }
}