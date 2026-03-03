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
      home: ButtonPage(),
    );
  }
}

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Elevated Button Pressed");
              },
              child: const Text("Elevated Button"),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                print("Text Button Pressed");
              },
              child: const Text("Text Button"),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                print("Outlined Button Pressed");
              },
              child: const Text("Outlined Button"),
            ),
          ],
        ),
      ),
    );
  }
}