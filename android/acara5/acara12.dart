import 'dart:async';

void main() async {
  // Menjalankan Soal 2 terlebih dahulu, dan menunggu hingga selesai
  await jalankanSoal2();

  // Setelah Soal 2 selesai, baru menjalankan Soal 3
  await jalankanSoal3();
}


// FUNGSI UNTUK SOAL 2: Future Delayed

Future<void> jalankanSoal2() async {
  print("=== Soal 2: Future delayed (Tanpa async/await) ===");
  print("Life");

  // Sesuai instruksi: Menggunakan Future.delayed tanpa await pada blok ini
  Future.delayed(Duration(seconds: 1), () {
    print("never flat");
  });

  print("is");

  // (Tambahan) Memberi jeda 2 detik agar 'never flat' selesai dicetak
  // sebelum program lanjut ke Soal 3
  await Future.delayed(Duration(seconds: 2));
}


// FUNGSI UNTUK SOAL 3: Subtitle Lagu

Future<void> jalankanSoal3() async {
  print("\n=== Soal 3: Async, Await and Future (Subtitle Lagu) ===");
  print("Ready. Sing");

  await Future.delayed(Duration(seconds: 5));
  line();

  await Future.delayed(Duration(seconds: 3));
  line2();

  await Future.delayed(Duration(seconds: 2));
  line3();

  await Future.delayed(Duration(seconds: 1));
  line4();
}

// Function pendukung untuk mencetak lirik lagu
line() {
  print("pernahkan kau merasa");
}

line2() {
  print("pernahkan kau merasa...........");
}

line3() {
  print("pernahkan kau merasa");
}

line4() {
  print("Hatimu hampa, pernahkan kau merasa hati mu kosong...........");
}