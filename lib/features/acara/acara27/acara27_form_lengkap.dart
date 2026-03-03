import 'package:flutter/material.dart';

class Acara27FormLengkap extends StatefulWidget {
  const Acara27FormLengkap({super.key});

  @override
  State<Acara27FormLengkap> createState() => _Acara27FormLengkapState();
}

class _Acara27FormLengkapState extends State<Acara27FormLengkap> {

  /// Controller
  final TextEditingController controllerNama = TextEditingController();
  final TextEditingController controllerPass = TextEditingController();
  final TextEditingController controllerMoto = TextEditingController();

  /// Radio
  String jk = "";

  /// Dropdown
  final List<String> agamaList = [
    "Islam",
    "Kristen Protestan",
    "Kristen Katolik",
    "Hindu",
    "Buddha"
  ];

  String agama = "Islam";

  void pilihJk(String value) {
    setState(() {
      jk = value;
    });
  }

  void pilihAgama(String value) {
    setState(() {
      agama = value;
    });
  }

  void kirimData() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Data Diri"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Nama: ${controllerNama.text}"),
            Text("Password: ${controllerPass.text}"),
            Text("Moto: ${controllerMoto.text}"),
            Text("Jenis Kelamin: $jk"),
            Text("Agama: $agama"),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Diri"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          /// Nama
          TextField(
            controller: controllerNama,
            decoration: const InputDecoration(
              labelText: "Nama Lengkap",
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 15),

          /// Password
          TextField(
            controller: controllerPass,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 15),

          /// Moto
          TextField(
            controller: controllerMoto,
            decoration: const InputDecoration(
              labelText: "Moto Hidup",
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 20),

          /// RADIO BUTTON
          const Text("Jenis Kelamin"),
          RadioListTile(
            title: const Text("Laki-laki"),
            value: "Laki-laki",
            groupValue: jk,
            onChanged: (value) => pilihJk(value!),
          ),
          RadioListTile(
            title: const Text("Perempuan"),
            value: "Perempuan",
            groupValue: jk,
            onChanged: (value) => pilihJk(value!),
          ),

          const SizedBox(height: 20),

          /// DROPDOWN
          const Text("Agama"),
          DropdownButton<String>(
            value: agama,
            isExpanded: true,
            items: agamaList.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) => pilihAgama(value!),
          ),

          const SizedBox(height: 30),

          /// BUTTON
          ElevatedButton(
            onPressed: kirimData,
            child: const Text("Kirim"),
          ),
        ],
      ),
    );
  }
}