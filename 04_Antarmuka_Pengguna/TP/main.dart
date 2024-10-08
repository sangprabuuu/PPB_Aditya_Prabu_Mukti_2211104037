import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WisataPage(),
    );
  }
}

class WisataPage extends StatelessWidget {
  const WisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rekomendasi Wisata'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const Text(
              'Teluk Penyu',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU2mkiGTDQInQBL7CcVr6WsIE0CwyT1_Z-fQ&s',
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Pantai Teluk Penyu adalah sebuah objek wisata pantai yang terletak di Cilacap, Jawa Tengah. Pantai ini terkenal dengan panorama laut yang indah dan ombaknya yang tenang,'
              ' sehingga menjadi salah satu destinasi favorit bagi wisatawan lokal maupun mancanegara. Nama "Teluk Penyu" berasal dari sejarahnya sebagai tempat berkumpulnya penyu-penyu yang dulunya sering terlihat di sekitar pantai.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 12.0),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Text('Kunjungi tempat'),
            ),
          ],
        ),
      ),
    );
  }
}
