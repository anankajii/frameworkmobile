// --- FUNGSI MAIN UTAMA ---
void main() {
  print("=== Contoh Function 1: Tanpa Return ===");
  tampilkan();

  print("\n=== Contoh Function 2: Dengan Return ===");
  print(munculkanangka());

  print("\n=== Contoh Function 3: Dengan Parameter ===");
  print(kalikanDua(6));

  print("\n=== Contoh Function 4: Parameter Lebih Dari Satu ===");
  print(kalikan(5, 6));

  print("\n=== Contoh Function 5: Parameter Default ===");
  tampilkanangka(5);
  // Jika ingin mengubah nilai default s1, Anda bisa memanggilnya seperti ini:
  // tampilkanangka(5, s1: 100);

  print("\n=== Waspadai Pengiriman Parameter ===");
  print(functionPerkalian(5, 6));
}


// --- DEFINISI FUNGSI-FUNGSI ---

// Contoh 1
tampilkan() {
  print("Hello Peserta Bootcamp");
}

// Contoh 2
munculkanangka() {
  return 2;
}

// Contoh 3
kalikanDua(angka) {
  return angka * 2;
}

// Contoh 4
kalikan(x, y) {
  return x * y;
}

// Contoh 5
// (Catatan: Menggunakan tanda '=' untuk default value pada Named Parameter)
tampilkanangka(n1, {s1 = 45}) {
  print(n1); // hasil akan 5 karena diinisialisasi 5 saat pemanggilan
  print(s1); // hasil adalah 45 karena mengambil dari parameter default
}

// Contoh Function Lainnya
functionPerkalian(angka1, angka2) {
  return angka1 * angka2;
}