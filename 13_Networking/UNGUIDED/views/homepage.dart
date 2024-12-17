import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan3_3/controllers/note_controller.dart';
import 'add_note.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NoteController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Catatan'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.notes.length,
          itemBuilder: (context, index) {
            final note = controller.notes[index];
            return ListTile(
              title: Text(note.title),
              subtitle: Text(note.description),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => controller.removeNote(index),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddNotePage());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
