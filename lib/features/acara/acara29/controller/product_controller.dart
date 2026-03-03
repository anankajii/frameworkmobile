import '../model/product.dart';

class ProductController {

  List<Product> getProducts() {
    return [
      Product(
        id: 1,
        productName: "Laptop",
        productImage: "assets/img/profile1.jpg",
        productDescription: "Laptop Gaming",
        price: 15000000,
      ),
      Product(
        id: 2,
        productName: "Mouse",
        productImage: "assets/img/profile2.jpg",
        productDescription: "Mouse Wireless",
        price: 250000,
      ),
    ];
  }
}