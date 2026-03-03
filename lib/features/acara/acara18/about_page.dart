import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          "Ini adalah halaman About",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}