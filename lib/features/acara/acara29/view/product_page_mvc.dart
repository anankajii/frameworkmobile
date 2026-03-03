import 'package:flutter/material.dart';
import '../controller/product_controller.dart';

class ProductPageMVC extends StatelessWidget {
  const ProductPageMVC({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ProductController();
    final products = controller.getProducts();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(product.productImage),
              ),
              title: Text(product.productName),
              subtitle: Text(product.productDescription),
              trailing: Text("Rp ${product.price}"),
            ),
          );
        },
      ),
    );
  }
}