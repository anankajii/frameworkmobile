import 'dart:io';

void main() {
  // ==============================
  // 1. Operator Ternary (Input User)
  // ==============================
  while (true) {
    stdout.write("Apakah ini Wahyu? (ya/tidak): ");
    String? inputWahyu = stdin.readLineSync()?.toLowerCase();

    if (inputWahyu == "ya" || inputWahyu == "tidak") {
      bool isThisWahyu = inputWahyu == "ya";
      isThisWahyu ? print("wahyu") : print("bukan");
      break; // lanjut ke bagian berikutnya
    } else {
      print(" Input salah, ketik 'ya' atau 'tidak'");
    }
  }

  print("================================");

  // ==============================
  // 2. Mood (Input User)
  // ==============================
  while (true) {
    stdout.write("Masukkan mood kamu (happy/sad): ");
    String? mood = stdin.readLineSync()?.toLowerCase();

    if (mood == "happy") {
      print("Hari ini aku bahagia!");
      break;
    } else if (mood == "sad") {
      print("Hari ini aku biasa saja.");
      break;
    } else {
      print(" Mood tidak valid");
    }
  }

  print("================================");

  // ==============================
  // 3. Minimarket + Nested If
  // ==============================
  while (true) {
    stdout.write("Status minimarket (open/close): ");
    String? minimarketStatus = stdin.readLineSync()?.toLowerCase();

    if (minimarketStatus != "open" && minimarketStatus != "close") {
      print(" Input harus 'open' atau 'close'");
      continue;
    }

    stdout.write("Sisa menit buka: ");
    int? minuteRemainingToOpen =
    int.tryParse(stdin.readLineSync() ?? "");

    if (minuteRemainingToOpen == null) {
      print(" Masukkan angka yang valid");
      continue;
    }

    if (minimarketStatus == "open") {
      print("Saya akan membeli telur dan buah");

      stdout.write("Status telur (available/soldout): ");
      String? telur = stdin.readLineSync()?.toLowerCase();

      stdout.write("Status buah (available/soldout): ");
      String? buah = stdin.readLineSync()?.toLowerCase();

      if ((telur != "available" && telur != "soldout") ||
          (buah != "available" && buah != "soldout")) {
        print("Input telur/buah tidak valid");
        continue;
      }

      if (telur == "soldout" && buah == "soldout") {
        print("Telur dan buah habis, belanja tidak lengkap");
      } else if (telur == "soldout") {
        print("Telur habis");
      } else if (buah == "soldout") {
        print("Buah habis");
      } else {
        print("Semua belanjaan tersedia");
      }

      break;
    } else if (minuteRemainingToOpen <= 5) {
      print("Minimarket buka sebentar lagi, saya tunggu");
      break;
    } else {
      print("Minimarket tutup, saya pulang");
      break;
    }
  }

  print("================================");

  // ==============================
  // 4. Switch Case (Input User)
  // ==============================
  while (true) {
    stdout.write("Tekan tombol TV (1-4): ");
    int? buttonPushed =
    int.tryParse(stdin.readLineSync() ?? "");

    if (buttonPushed == null || buttonPushed < 1 || buttonPushed > 4) {
      print(" Tombol tidak valid");
      continue;
    }

    switch (buttonPushed) {
      case 1:
        print('Matikan TV!');
        break;
      case 2:
        print('Turunkan volume TV!');
        break;
      case 3:
        print('Tingkatkan volume TV!');
        break;
      case 4:
        print('Matikan suara TV!');
        break;
    }

    break;
  }
}
