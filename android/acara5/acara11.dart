import 'dart:async';

void main(List<String> args) async {
  var h = Human();

  // Mencetak data awal secara langsung (synchronous)
  print("luffy");
  print("zoro");
  print("killer");
  print(h.name); // Output: nama character one piece

  // Menjalankan fungsi asynchronous dan menunggunya selesai dengan 'await'
  await h.getData();

  // Mencetak nama setelah diubah oleh fungsi getData
  print("name 3: ${h.name}"); // Output: name 3: hilmy
}

class Human {
  String name = "nama character one piece";

  // Mengubah method menjadi Future agar bisa berjalan secara asynchronous
  Future<void> getData() async {
    // Menambahkan delay/waktu tunggu selama 3 detik
    await Future.delayed(Duration(seconds: 3));

    name = "hilmy";
    print("get data [done]");
  }
}