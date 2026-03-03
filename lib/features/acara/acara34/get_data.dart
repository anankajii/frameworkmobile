import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'get_detail_screen.dart';

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({super.key});

  @override
  State<GetDataScreen> createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {

  List data = [];
  bool isLoading = true;

  Future<void> getData() async {
    var url = Uri.parse("https://dummyjson.com/users");

    var response = await http.get(url);

    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      setState(() {
        data = result['users']; // beda dari reqres
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
      appBar: AppBar(title: const Text("Get Data API")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {

          final user = data[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                NetworkImage(user['image']), // avatar diganti image
              ),
              title: Text(
                  "${user['firstName']} ${user['lastName']}"),
              subtitle: Text(user['email']),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => GetDetailScreen(
                      value: user['id'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}