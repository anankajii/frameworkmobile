import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Acara33ApiPage extends StatefulWidget {
  const Acara33ApiPage({super.key});

  @override
  State<Acara33ApiPage> createState() => _Acara33ApiPageState();
}

class _Acara33ApiPageState extends State<Acara33ApiPage> {

  List users = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    final response = await http.get(
      Uri.parse("https://dummyjson.com/users"),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        users = data['users']; // beda dari reqres
        isLoading = false;
      });
    } else {
      print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Acara 33 - API Users")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {

          final user = users[index];

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
                    builder: (_) =>
                        UserDetailPage(id: user['id']),
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

class UserDetailPage extends StatefulWidget {
  final int id;

  const UserDetailPage({super.key, required this.id});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {

  Map user = {};
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchDetail();
  }

  Future<void> fetchDetail() async {
    final response = await http.get(
      Uri.parse("https://dummyjson.com/users/${widget.id}"),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        user = data;
        isLoading = false;
      });
    } else {
      print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Detail")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage:
              NetworkImage(user['image']),
            ),
            const SizedBox(height: 20),
            Text(
              "${user['firstName']} ${user['lastName']}",
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(user['email']),
            const SizedBox(height: 10),
            Text("Phone: ${user['phone']}"),
            const SizedBox(height: 10),
            Text("Age: ${user['age']}"),
          ],
        ),
      ),
    );
  }
}