import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/demo_controller.dart';

class HomePage32 extends StatelessWidget {
  const HomePage32({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DemoController>();

    return Scaffold(
      appBar: AppBar(title: const Text("Dark Mode Persist")),
      body: GetBuilder<DemoController>(
        builder: (_) => Center(
          child: SwitchListTile(
            value: controller.isDark,
            title: const Text("Dark Mode"),
            onChanged: controller.changeTheme,
          ),
        ),
      ),
    );
  }
}