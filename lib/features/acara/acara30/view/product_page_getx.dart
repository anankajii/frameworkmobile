import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/purchase_controller.dart';

class ProductPageGetX extends StatelessWidget {
  ProductPageGetX({super.key});

  final controller = Get.put(PurchaseController30());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GetX Product")),
      body: Obx(() {
        if (controller.products.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            final product = controller.products[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text(product.description),
              trailing: Text("Rp ${product.price}"),
            );
          },
        );
      }),
    );
  }
}