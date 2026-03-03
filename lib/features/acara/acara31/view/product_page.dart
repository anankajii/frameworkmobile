import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/cart_controller.dart';
import '../controller/purchase_controller.dart';
import 'cart_page.dart'; // 🔥 WAJIB IMPORT

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  final PurchaseController purchase =
  Get.put(PurchaseController());

  final CartController cart =
  Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product"),

        // 🔥 BACK BUTTON FIX
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),

        actions: [
          Stack(
            children: [

              // 🔥 CART BUTTON FIX
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () => Get.to(() => CartPage()),
              ),

              Positioned(
                right: 0,
                child: Obx(() => CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                  child: Text(
                    cart.count.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                )),
              ),
            ],
          )
        ],
      ),

      body: Obx(() => ListView.builder(
        itemCount: purchase.products.length,
        itemBuilder: (context, index) {
          final product = purchase.products[index];

          return ListTile(
            title: Text(product.name),
            subtitle: Text("Rp ${product.price}"),
            trailing: ElevatedButton(
              onPressed: () => cart.add(product),
              child: const Text("Add"),
            ),
          );
        },
      )),
    );
  }
}