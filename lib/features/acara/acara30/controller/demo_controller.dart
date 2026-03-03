import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class DemoController extends GetxController {

  final storage = GetStorage();

  bool get isDark => storage.read('darkmode') ?? false;

  void changeTheme(bool value) {
    storage.write('darkmode', value);
    Get.changeThemeMode(
        value ? ThemeMode.dark : ThemeMode.light);
  }
}