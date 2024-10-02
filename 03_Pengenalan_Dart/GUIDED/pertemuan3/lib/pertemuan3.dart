//void main() {
  //penamaan variable menggunakan camelCase

  // String firstName = 'praktkum';
  // var lastName = 'PPB';
  // print('hari ini $firstName $lastName');

  // var open = 8;
  // var close = 17;
  // var now = 12;

  // if (now >= open && now < close) {
  //   print("Toko buka");
  // } else if (now == 13) {
  //   print("Tokko Sedang Istirahhat");
  // } else {
  //   print("toko tutup");
  // }

// //Switch Case
// var nilai = 'b';

// switch (nilai) {
//   case 'a':
//     print('Nilai Sangat Bagus');
//     break;
//   case 'b':
//     print('Nilai Bagus');
//     break;
//   case 'c':
//     print('Nilai Cukup');
//     break;
//   default:
//     print('Nilai Tidak Tersedia');
// }

// // For loop untuk mencetak angka 1 sampai 5
//   for (int i = 1; i <= 5; i++) {
//     print(i);
//   }

// // While loop untuk mencetak angka 1 sampai 5

// // Inisialisasi variabel
//   int i = 1;

//   while (i <= 5) {
//     print('Angka: $i');
//     i++; // Increment untuk menghindari loop tak berujung
//   }

  // // Membuat fixed-length list dengan panjang 3
  // List<int> fixedList =
  //     List.filled(3, 0); // List dengan 3 elemen, semua diinisialisasi ke 0

  // // Mengubah elemen dalam list
  // fixedList[0] = 10;
  // fixedList[1] = 20;
  // fixedList[2] = 30;
  // print('Fixed Length List: $fixedList'); 

  // // Menambah atau menghapus elemen tidak diperbolehkan
  // // fixedList.add(30); // Ini akan menimbulkan error
  // // fixedList.removeAt(0); // Ini juga akan menimbulkan error

// // Membuat growable list (panjangnya bisa berubah)
//  List<int> growableList = [];
//  // Menambahkan elemen baru ke dalam list
//  growableList.add(10);
//  growableList.add(20);
//  growableList.add(30);
//  print('Growable List setelah menambah elemen: $growableList'); 
//  // Menambahkan lebih banyak elemen
//  growableList.add(40);
//  growableList.add(50);
//  print(growableList); 
//  // Menghapus elemen dari list
//  growableList.remove(20);
//  print('Growable List setelah menghapus elemen: $growableList'); 
//}

//Memanggil Fungsi

void cetakPesan(String pesan) {
    print(pesan);
  }

  int perkalian(int a, int b) {
    return a * b;
  }

  void main() {
    int hasil = perkalian(6, 12);
    print('Hasil perkalian fungsi: $hasil');

    cetakPesan('Halo Deck');
  }


