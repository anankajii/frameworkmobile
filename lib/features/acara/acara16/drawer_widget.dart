import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Nama Kamu"),
            accountEmail: Text("email@kamu.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/img/profile1.jpg"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text("New Group"),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("New Chat"),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contacts"),
          ),
        ],
      ),
    );
  }
}