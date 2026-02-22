import 'dart:io';

void main() {

  // ==============================
  // 1. TERNARY INSTALL APP
  // ==============================
  print("=== TERNARY INSTALL APP ===");
  stdout.write("Mau install aplikasi? (Y/T): ");
  String? jawab = stdin.readLineSync();

  String hasil = (jawab == "Y" || jawab == "y")
      ? "Anda akan menginstall aplikasi dart"
      : "Aborted";

  print(hasil);


  // ==============================
  // 2. IF ELSE WEREWOLF
  // ==============================
  print("\n=== GAME WEREWOLF ===");
  stdout.write("Masukkan Nama: ");
  String? nama = stdin.readLineSync();

  stdout.write("Masukkan Peran: ");
  String? peran = stdin.readLineSync();

  if (nama == null || nama.isEmpty) {
    print("Nama harus diisi!");
  } else if (peran == null || peran.isEmpty) {
    print("Halo $nama, Pilih peranmu untuk memulai game!");
  } else {
    print("Selamat datang di Dunia Werewolf, $nama");

    if (peran == "Penyihir") {
      print("Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
    } else if (peran == "Guard") {
      print("Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
    } else if (peran == "Werewolf") {
      print("Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!");
    }
  }


  // ==============================
  // 3. SWITCH QUOTES HARI
  // ==============================
  print("\n=== QUOTES HARI ===");
  stdout.write("Masukkan Hari: ");
  String? hari = stdin.readLineSync();

  switch (hari) {
    case "Senin":
      print("Segala sesuatu memiliki kesudahan...");
      break;
    case "Selasa":
      print("Setiap detik sangatlah berharga...");
      break;
    case "Rabu":
      print("Jika kamu tak menemukan buku...");
      break;
    case "Kamis":
      print("Jika hatimu banyak merasakan sakit...");
      break;
    case "Jumat":
      print("Hidup tak selamanya tentang pacar.");
      break;
    case "Sabtu":
      print("Rumah bukan hanya sebuah tempat...");
      break;
    case "Minggu":
      print("Hanya seseorang yang takut yang bisa bertindak berani...");
      break;
    default:
      print("Hari tidak valid.");
  }


  // ==============================
  // 4. SWITCH FORMAT TANGGAL
  // ==============================
  print("\n=== FORMAT TANGGAL ===");

  var tanggal = 21;
  var bulan = 13;
  var tahun = 1945;

  String namaBulan;

  switch (bulan) {
    case 1: namaBulan = "Januari"; break;
    case 2: namaBulan = "Februari"; break;
    case 3: namaBulan = "Maret"; break;
    case 4: namaBulan = "April"; break;
    case 5: namaBulan = "Mei"; break;
    case 6: namaBulan = "Juni"; break;
    case 7: namaBulan = "Juli"; break;
    case 8: namaBulan = "Agustus"; break;
    case 9: namaBulan = "September"; break;
    case 10: namaBulan = "Oktober"; break;
    case 11: namaBulan = "November"; break;
    case 12: namaBulan = "Desember"; break;
    default: namaBulan = "Bulan tidak valid";
  }

  print("$tanggal $namaBulan $tahun");


  // ==============================
  // 5. WHILE LOOP
  // ==============================
  print("\nLOOPING PERTAMA");

  int angka = 2;
  while (angka <= 20) {
    print("$angka - I love coding");
    angka += 2;
  }

  print("LOOPING KEDUA");

  int angka2 = 20;
  while (angka2 >= 2) {
    print("$angka2 - I will become a mobile developer");
    angka2 -= 2;
  }


  // ==============================
  // 6. FOR LOOP SYARAT
  // ==============================
  print("\n=== FOR LOOP SYARAT ===");

  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0 && i % 2 != 0) {
      print("$i - I Love Coding");
    } else if (i % 2 == 0) {
      print("$i - Berkualitas");
    } else {
      print("$i - Santai");
    }
  }


  // ==============================
  // 7. PERSEGI PANJANG
  // ==============================
  print("\n=== PERSEGI PANJANG ===");

  for (int i = 0; i < 4; i++) {
    print("########");
  }


  // ==============================
  // 8. TANGGA
  // ==============================
  print("\n=== TANGGA ===");

  for (int i = 1; i <= 7; i++) {
    print("#" * i);
  }

}