import 'dart:io';


String cekNilai(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40 && nilai <= 70) {
    return "Nilai B";
  } else if (nilai > 0 && nilai <= 40) {
    return "Nilai C";
  } else {
    return "";
  }
}

void main() {
  
  print("Masukkan nilai: ");
  int? inputNilai = int.parse(stdin.readLineSync()!);

  
  String hasil = cekNilai(inputNilai);

  
  if (hasil.isNotEmpty) {
    print("$inputNilai merupakan $hasil");
  } else {
    print("Nilai tidak valid");
  }
}
