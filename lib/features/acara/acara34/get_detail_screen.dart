import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetDetailScreen extends StatefulWidget {
  final int value;

  const GetDetailScreen({super.key, required this.value});

  @override
  State<GetDetailScreen> createState() =>
      _GetDetailScreenState();
}

class _GetDetailScreenState extends State<GetDetailScreen> {

  Map data = {};
  bool isLoading = true;

  Future<void> getData() async {
    var url =
    Uri.parse("https://dummyjson.com/users/${widget.value}");

    var response = await http.get(url);

    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      setState(() {
        data = result;
        isLoading = false;
      });
    } else {
      print(response.body);
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail User")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage:
              NetworkImage(data['image']),
            ),
            const SizedBox(height: 20),
            Text(
              "${data['firstName']} ${data['lastName']}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(data['email']),
            const SizedBox(height: 10),
            Text("Phone: ${data['phone']}"),
            const SizedBox(height: 10),
            Text("Age: ${data['age']}"),
          ],
        ),
      ),
    );
  }
}