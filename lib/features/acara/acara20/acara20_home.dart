import 'package:flutter/material.dart';
import 'page_home.dart';
import 'page_search.dart';
import 'page_profile.dart';

class Acara20Home extends StatefulWidget {
  const Acara20Home({super.key});

  @override
  State<Acara20Home> createState() => _Acara20HomeState();
}

class _Acara20HomeState extends State<Acara20Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    PageHome(),
    PageSearch(),
    PageProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Flutter"),
      ),

      /// DRAWER (KIRI)
      drawer: buildDrawer(),

      /// END DRAWER (KANAN)
      endDrawer: buildDrawer(),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"),
        ],
      ),
    );
  }

  /// METHOD DRAWER BIAR RAPI
  Drawer buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundImage:
              AssetImage("assets/img/profile1.jpg"),
            ),
            accountName: const Text("Belajar Flutter"),
            accountEmail:
            const Text("hallo@belajarflutter.com"),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundImage:
                AssetImage("assets/img/profile2.jpg"),
              ),
              CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ],
          ),

          const ListTile(
            leading: Icon(Icons.folder),
            title: Text("My File"),
          ),

          const ListTile(
            leading: Icon(Icons.people),
            title: Text("Shared with me"),
          ),

          const ListTile(
            leading: Icon(Icons.access_time),
            title: Text("Recent"),
          ),

          const Divider(),

          const ListTile(
            leading: Icon(Icons.delete),
            title: Text("Trash"),
          ),
        ],
      ),
    );
  }
}