// ==========================================
// 1. CLASS SOAL 1 (Prosedural ke Class)
// ==========================================
class SegitigaSoal1 {
  double? alas;
  double? tinggi;

  double hitungLuas() {
    return 0.5 * alas! * tinggi!;
  }
}

// ==========================================
// 2. CLASS ENKAPSULASI
// ==========================================
class LingkaranEnkap {
  late double _jariJari;

  set jariJari(double value) {
    if (value < 0) {
      _jariJari = value * -1;
    } else {
      _jariJari = value;
    }
  }

  double get luas => 3.14 * _jariJari * _jariJari;
}

// ==========================================
// 3. CLASS INHERITANCE
// ==========================================
class Titan {
  double _powerPoint = 0;

  double get powerPoint => _powerPoint;

  set powerPoint(double value) {
    if (value < 5) {
      _powerPoint = 5;
    } else {
      _powerPoint = value;
    }
  }
}

class ArmorTitan extends Titan {
  String terjang() => "dush.. dush..";
}

class AttackTitan extends Titan {
  String punch() => "blam.. blam..";
}

class BeastTitan extends Titan {
  String lempar() => "wush wush..";
}

class Human extends Titan {
  String killAlltitan() => "Sasageyo ... Shinzo Sasageyo...";
}

// ==========================================
// 4. CLASS POLYMORPHISM
// ==========================================
class BangunDatar {
  double luas() {
    print("Menghitung luas bangun datar...");
    return 0;
  }

  double keliling() {
    print("Menghitung keliling bangun datar...");
    return 0;
  }
}

class PersegiPoly extends BangunDatar {
  double sisi;
  PersegiPoly(this.sisi);

  @override
  double luas() => sisi * sisi;

  @override
  double keliling() => 4 * sisi;
}

class LingkaranPoly extends BangunDatar {
  double jariJari;
  LingkaranPoly(this.jariJari);

  @override
  double luas() => 3.14 * jariJari * jariJari;

  @override
  double keliling() => 2 * 3.14 * jariJari;
}

class SegitigaPoly extends BangunDatar {
  double alas, tinggi, sisiA, sisiB, sisiC;

  SegitigaPoly(this.alas, this.tinggi, this.sisiA, this.sisiB, this.sisiC);

  @override
  double luas() => 0.5 * alas * tinggi;

  @override
  double keliling() => sisiA + sisiB + sisiC;
}

// ==========================================
// 5. CLASS CONSTRUCTOR
// ==========================================
class Employee {
  int id;
  String name;
  String department;

  Employee(this.id, this.name, this.department);
}

// ==========================================
// FUNGSI MAIN UTAMA UNTUK MENJALANKAN SEMUA
// ==========================================
void main() {
  print("=== 1. HASIL SOAL 1 (Prosedural ke Class) ===");
  SegitigaSoal1 segitiga1 = SegitigaSoal1();
  segitiga1.alas = 20.0;
  segitiga1.tinggi = 30.0;
  print("Luas Segitiga: ${segitiga1.hitungLuas()}\n");

  print("=== 2. HASIL ENKAPSULASI ===");
  LingkaranEnkap lingkaranEnkap = LingkaranEnkap();
  lingkaranEnkap.jariJari = -7.0; // Input negatif akan diubah positif oleh setter
  print("Luas Lingkaran (Jari-jari -7.0 divalidasi): ${lingkaranEnkap.luas}\n");

  print("=== 3. HASIL INHERITANCE ===");
  ArmorTitan armor = ArmorTitan();
  AttackTitan attack = AttackTitan();
  BeastTitan beast = BeastTitan();
  Human human = Human();

  armor.powerPoint = 3; // Di bawah 5, akan diset jadi 5
  attack.powerPoint = 8;
  beast.powerPoint = 4; // Di bawah 5, akan diset jadi 5
  human.powerPoint = 10;

  print("Armor Titan Power: ${armor.powerPoint} | Action: ${armor.terjang()}");
  print("Attack Titan Power: ${attack.powerPoint} | Action: ${attack.punch()}");
  print("Beast Titan Power: ${beast.powerPoint} | Action: ${beast.lempar()}");
  print("Human Power: ${human.powerPoint} | Action: ${human.killAlltitan()}\n");

  print("=== 4. HASIL POLYMORPHISM ===");
  BangunDatar bd = BangunDatar();
  bd.luas();
  bd.keliling();

  PersegiPoly persegi = PersegiPoly(5);
  print("Persegi - Luas: ${persegi.luas()}, Keliling: ${persegi.keliling()}");

  LingkaranPoly lingkaranPoly = LingkaranPoly(7);
  print("Lingkaran - Luas: ${lingkaranPoly.luas()}, Keliling: ${lingkaranPoly.keliling()}");

  SegitigaPoly segitigaPoly = SegitigaPoly(3, 4, 3, 4, 5);
  print("Segitiga - Luas: ${segitigaPoly.luas()}, Keliling: ${segitigaPoly.keliling()}\n");

  print("=== 5. HASIL CONSTRUCTOR ===");
  Employee emp = Employee(101, "Budi Santoso", "IT Department");
  print("ID: ${emp.id}");
  print("Name: ${emp.name}");
  print("Department: ${emp.department}");
}