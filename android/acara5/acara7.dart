void main() {

  print("========== WHILE LOOP 1 : ANGKA 1-9 ==========");
  var flag = 1;

  while (flag < 10) {
    print("Iterasi ke-$flag");
    flag++;
  }
      

  print("\n========== WHILE LOOP 2 : MENGHITUNG TOTAL ==========");
  var deretWhile = 5;
  var jumlahWhile = 0;

  while (deretWhile > 0) {
    jumlahWhile += deretWhile;
    print("Tambah $deretWhile → Total sementara: $jumlahWhile");
    deretWhile--;
  }

  print("Total akhir: $jumlahWhile");


  print("\n========== FOR LOOP 1 : ANGKA 1-9 ==========");
  for (var angka = 1; angka < 10; angka++) {
    print("Iterasi ke-$angka");
  }


  print("\n========== FOR LOOP 2 : MENGHITUNG TOTAL ==========");
  var jumlahFor = 0;

  for (var deret = 5; deret > 0; deret--) {
    jumlahFor += deret;
    print("Tambah $deret → Total sementara: $jumlahFor");
  }

  print("Total akhir: $jumlahFor");


  print("\n========== FOR LOOP 3 : INCREMENT & DECREMENT ==========");

  print("\n-- Increment 2 --");
  for (var deret = 0; deret < 10; deret += 2) {
    print("Nilai sekarang: $deret");
  }

  print("\n-- Decrement 3 --");
  for (var deret = 15; deret > 0; deret -= 3) {
    print("Nilai sekarang: $deret");
  }

}