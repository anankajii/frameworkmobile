import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/demo_controller.dart';
import 'product_page.dart';

class HomePage31 extends StatelessWidget {
  HomePage31({super.key});

  final DemoController controller =
  Get.put(DemoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Obx(() => SwitchListTile(
              value: controller.isDark.value,
              title: const Text("Change Theme"),
              onChanged: controller.changeTheme,
            )),

            ElevatedButton(
              onPressed: () => Get.snackbar(
                "Hello",
                "This is Snackbar",
                backgroundColor: Colors.blue,
                colorText: Colors.white,
              ),
              child: const Text("Snackbar"),
            ),

            ElevatedButton(
              onPressed: () => Get.defaultDialog(
                title: "Dialog",
                middleText: "Hello from dialog",
              ),
              child: const Text("Dialog"),
            ),

            ElevatedButton(
              onPressed: () => Get.bottomSheet(
                Container(
                  height: 150,
                  color: Colors.white,
                  child: const Center(
                    child: Text("Bottom Sheet"),
                  ),
                ),
              ),
              child: const Text("Bottom Sheet"),
            ),

            ElevatedButton(
              onPressed: () => Get.to(() => ProductPage()),
              child: const Text("Go To Product"),
            ),
          ],
        ),
      ),
        ),
    );
  }
}