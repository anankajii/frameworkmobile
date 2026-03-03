import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetDalamWidget());
}

class WidgetDalamWidget extends StatelessWidget {
  const WidgetDalamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Pertamaku"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Nasi + Mie Rebus"),
          Text("Nasi + Mie Rebus + Telor"),
          Text("Nasi + Ayam"),
          Text("Nasi + Ayam + Es Jeruk"),
          Text("Nasi + Ikan + Teh Manis"),
          Text("Nasi + Sate Ayam"),
        ],
      ),
    );
  }
}