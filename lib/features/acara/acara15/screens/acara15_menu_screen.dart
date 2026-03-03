import 'package:app_test/features/acara/acara15/screens/button.dart';
import 'package:app_test/features/acara/acara15/screens/container.dart';
import 'package:app_test/features/acara/acara15/screens/text_field.dart';
import 'package:flutter/material.dart';
import 'package:app_test/features/acara/acara15/screens/icon.dart';
import 'package:app_test/features/acara/acara15/screens/widget_dalam_widget.dart';
import 'package:app_test/features/acara/acara15/screens/text.dart';
import 'package:app_test/features/acara/acara15/screens/scaffold_screen.dart';

class Acara15MenuScreen extends StatelessWidget {
  const Acara15MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Acara 15"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _menuButton(
            context,
            title: "Icon",
            page: const IconPage(),
          ),
          _menuButton(
            context,
            title: "Widget dalam Widget",
            page: const WidgetDalamWidget(),
          ),
          _menuButton(
            context,
            title: "Text",
            page: const TextPage(),
          ),
          _menuButton(
            context,
            title: "Scaffold",
            page: const ScaffoldScreen(),
          ),
          _menuButton(
            context,
            title: "Container",
            page: const ContainerPage(),
          ),
          _menuButton(
            context,
            title: "Button",
            page: const ButtonPage(),
          ),
          _menuButton(
            context,
            title: "Login",
            page: const LoginPage(),
          ),
        ],
      ),
    );
  }

  Widget _menuButton(BuildContext context,
      {required String title, required Widget page}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },
        child: Text(title),
      ),
    );
  }
}