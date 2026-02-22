import 'dart:io';
void main(List <String> args) {
  print("Masukan Password : ");
  String inputText = stdin.readLineSync()!;
  print("password: $inputText");
}