import 'package:flutter/material.dart';
import 'about_page.dart';

class Acara18RoutingPage extends StatelessWidget {
  const Acara18RoutingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Routing"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const AboutPage(),
              ),
            );
          },
          child: const Text("Tap Untuk ke AboutPage"),
        ),
      ),
    );
  }
}