import 'dart:io';

void main() {
  
  stdout.write("Masukkan sebuah bilangan bulat: ");
  int? bilangan = int.parse(stdin.readLineSync()!);

  
  if (isPrima(bilangan)) {
    print("$bilangan adalah bilangan prima");
  } else {
    print("$bilangan bukan bilangan prima");
  }
}


bool isPrima(int n) {
  if (n <= 1) {
    return false; 
  }
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false; 
    }
  }
  return true; 
}
