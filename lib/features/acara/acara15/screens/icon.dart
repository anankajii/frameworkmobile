import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IconPage(),
    );
  }
}

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Icons")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Column(
              children: [
                Icon(Icons.alarm, size: 40),
                Text("Alarm"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.phone, size: 40),
                Text("Phone"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.book, size: 40),
                Text("Book"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}