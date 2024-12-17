import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan3_3/controllers/note_controller.dart';
import 'package:pertemuan3_3/views/homepage.dart';

void main() {
  Get.put(NoteController());
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(  
      title: 'Aplikasi Catatan Sederhana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}
