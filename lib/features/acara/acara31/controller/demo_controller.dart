import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class DemoController extends GetxController {

  final storage = GetStorage();
  final RxBool isDark = false.obs;

  @override
  void onInit() {
    super.onInit();

    // HANYA load value
    isDark.value = storage.read('darkmode') ?? false;
  }

  void changeTheme(bool value) {
    isDark.value = value;
    storage.write('darkmode', value);

    Get.changeThemeMode(
      value ? ThemeMode.dark : ThemeMode.light,
    );
  }
}