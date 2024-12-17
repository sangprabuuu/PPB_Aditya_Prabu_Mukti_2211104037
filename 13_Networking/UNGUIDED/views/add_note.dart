// lib/views/add_note.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan3_3/controllers/note_controller.dart';

class AddNotePage extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Mengambil instance dari NoteController
    final NoteController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Catatan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Judul Catatan'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Deskripsi Catatan'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Menambah catatan baru ke daftar
                controller.addNote(
                  titleController.text,
                  descriptionController.text,
                );
                // Kembali ke halaman utama setelah menambah catatan
                Get.back();
              },
              child: Text('Simpan Catatan'),
            ),
          ],
        ),
      ),
    );
  }
}
