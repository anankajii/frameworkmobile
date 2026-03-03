import 'package:flutter/material.dart';

class Acara23DropMenu extends StatefulWidget {
  const Acara23DropMenu({super.key});

  @override
  State<Acara23DropMenu> createState() => _Acara23DropMenuState();
}

class _Acara23DropMenuState extends State<Acara23DropMenu> {

  /// CLASS PILIH
  static const List<Pilih> listPilihan = [
    Pilih(text: "Red", warna: Colors.red),
    Pilih(text: "Green", warna: Colors.green),
    Pilih(text: "Blue", warna: Colors.blue),
  ];

  Color warna = Colors.purple;

  void pilihMenu(Pilih pilihan) {
    setState(() {
      warna = pilihan.warna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Acara 23 - Drop Menu"),
        centerTitle: true,
        actions: [

          PopupMenuButton<Pilih>(
            onSelected: pilihMenu,
            itemBuilder: (context) {
              return listPilihan.map((Pilih pilihan) {
                return PopupMenuItem<Pilih>(
                  value: pilihan,
                  child: Text(pilihan.text),
                );
              }).toList();
            },
          ),

        ],
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [warna, Colors.deepPurple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Center(
          child: Text(
            "Pilih warna dari menu kanan atas",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}

/// CLASS DATA PILIHAN
class Pilih {
  final String text;
  final Color warna;

  const Pilih({
    required this.text,
    required this.warna,
  });
}