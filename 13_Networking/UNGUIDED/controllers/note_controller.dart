import 'package:get/get.dart';
import 'package:pertemuan3_3/models/note.dart';

class NoteController extends GetxController {
  // Daftar catatan yang akan ditampilkan
  var notes = <Note>[].obs;

  // Menambahkan catatan baru
  void addNote(String title, String description) {
    notes.add(Note(title: title, description: description));
  }

  // Menghapus catatan berdasarkan index
  void removeNote(int index) {
    notes.removeAt(index);
  }
}
