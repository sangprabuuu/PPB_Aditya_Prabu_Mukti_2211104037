import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Banyumas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Rekomendasi Wisata Banyumas'),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/indizone/2020/06/30/qEsjDqX/t_5efb0fdcdc0d2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 87, 223, 84)
                              .withOpacity(0.6),
                          const Color.fromARGB(0, 0, 0, 0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.green,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                wisataItem(
                  context,
                  'Curug Cipendok',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Curug_Cipendok.jpg/375px-Curug_Cipendok.jpg',
                  'Curug Cipendok merupakan air terjun setinggi 92 meter yang terletak di Kabupaten Banyumas. Tempat ini terkenal dengan panorama hutan hijau yang masih alami dan udaranya yang sejuk.',
                ),
                wisataItem(
                  context,
                  'Baturraden',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Baturraden_overview_from_ridge%2C_Purwokerto%2C_2015-03-23.jpg/600px-Baturraden_overview_from_ridge%2C_Purwokerto%2C_2015-03-23.jpg',
                  'Baturraden adalah destinasi wisata yang menawarkan pemandangan alam pegunungan yang indah. Tempat ini juga memiliki taman bermain, pemandian air panas, dan jalur hiking.',
                ),
                wisataItem(
                  context,
                  'Telaga Sunyi',
                  'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p3/43/2024/05/30/aa-2814954010.jpg',
                  'Telaga Sunyi adalah sebuah telaga kecil yang airnya sangat jernih dan tenang. Lokasinya tersembunyi di Baturraden, menjadikannya tempat yang cocok untuk relaksasi.',
                ),
                wisataItem(
                  context,
                  'Museum BRI',
                  'https://static.promediateknologi.id/crop/0x35:683x419/0x0/webp/photo/p3/43/2024/05/31/aa-2422309264.jpg',
                  'Museum Bank Rakyat Indonesia (BRI) di Purwokerto menyimpan sejarah perbankan di Indonesia. Museum ini menyajikan koleksi benda bersejarah serta dokumentasi yang menarik.',
                ),
                wisataItem(
                  context,
                  'Kebun Raya Baturraden',
                  'https://www.mongabay.co.id/wp-content/uploads/2015/11/kebun-raya-baturraden.jpg',
                  'Kebun Raya Baturraden adalah kebun raya yang memiliki berbagai jenis flora yang terawat dengan baik. Tempat ini sangat cocok bagi pecinta botani dan fotografi.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget wisataItem(
      BuildContext context, String nama, String imageUrl, String deskripsi) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8.0),
            Text(
              nama,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              deskripsi,
              style: const TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                // Tambahkan aksi jika tombol diklik
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24.0, vertical: 12.0),
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'Kunjungi tempat',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
