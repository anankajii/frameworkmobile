import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/acara/screens/acara_list_screen.dart';
import 'features/acara/acara31/view/product_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,

      home: AcaraListScreen(),

      getPages: [
        GetPage(
          name: '/product',
          page: () => ProductPage(),
        ),
      ],
    );
  }
}