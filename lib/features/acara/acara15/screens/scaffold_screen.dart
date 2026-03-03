import 'package:flutter/material.dart';

void main() {
  runApp(const Scaffold());
}

class ScaffoldScreen extends StatelessWidget {
  const ScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SampleCodePage(),
    );
  }
}

class SampleCodePage extends StatefulWidget {
  const SampleCodePage({super.key});

  @override
  State<SampleCodePage> createState() => _SampleCodePageState();
}

class _SampleCodePageState extends State<SampleCodePage> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample Code"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "You have pressed the button $_count times.",
          style: const TextStyle(fontSize: 16),
        ),
      ),
      backgroundColor: Colors.blueGrey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}