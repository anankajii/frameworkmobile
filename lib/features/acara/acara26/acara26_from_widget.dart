import 'package:flutter/material.dart';

class Acara26FormWidget extends StatefulWidget {
  const Acara26FormWidget({super.key});

  @override
  State<Acara26FormWidget> createState() => _Acara26FormWidgetState();
}

class _Acara26FormWidgetState extends State<Acara26FormWidget> {

  final _formKey = GlobalKey<FormState>();

  bool isProgramming = false;
  bool isSwitchOn = false;
  double nilaiSlider = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BelajarFlutter.com"),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// NAMA
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Nama",
                  hintText: "Contoh: Anan",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              /// PASSWORD
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password tidak boleh kosong";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              /// CHECKBOX
              CheckboxListTile(
                title: const Text("Belajar Dasar Flutter"),
                subtitle: const Text("Back-End, Dart, dll"),
                value: isProgramming,
                onChanged: (value) {
                  setState(() {
                    isProgramming = value!;
                  });
                },
              ),

              const SizedBox(height: 10),

              /// SWITCH
              SwitchListTile(
                title: const Text("Belajar Programming"),
                value: isSwitchOn,
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    isSwitchOn = value;
                  });
                },
              ),

              const SizedBox(height: 10),

              /// SLIDER
              const Text("Nilai Slider"),
              Slider(
                value: nilaiSlider,
                min: 1,
                max: 100,
                divisions: 99,
                label: nilaiSlider.round().toString(),
                onChanged: (value) {
                  setState(() {
                    nilaiSlider = value;
                  });
                },
              ),

              const SizedBox(height: 20),

              /// BUTTON SUBMIT
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Data berhasil divalidasi"),
                        ),
                      );
                    }
                  },
                  child: const Text("Submit"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}