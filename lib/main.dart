import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BIO DATA"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(40), 
        decoration: BoxDecoration(
          color: Colors.lightBlue[100], 
          border: Border.all(
            color: Colors.white, 
            width: 50, // Ketebalan garis tepi
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar profil
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                      '../assets/images/profile.jpg'), // Gambar profile
                ),
              ),
              const SizedBox(height: 20), 

              // Nama di tengah
              Center(
                child: const Text(
                  'Aditya Prabu Mukti',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10), 

              // NIM di tengah
              Center(
                child: const Text(
                  'NIM: 2211104037',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20), 

              // Tanggal Lahir
              const Text(
                'Tanggal Lahir: 24 Maret 2004',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),

              // Alamat
              const Text(
                'Alamat: Jl. Gerilya No. 07, Kec. Kesugihan, Kab. Cilacap',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),

              // Nomor Telepon
              const Text(
                'Nomor Telepon: 083863087333',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),

              // Email
              const Text(
                'Email: aditmukti@contoh.com',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),

              // Deskripsi singkat
              const Text(
                'Tentang Saya:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Saya adalah seorang pengembang perangkat lunak yang memiliki pengalaman '
                'dalam pengembangan aplikasi mobile dan web. Saya sangat tertarik dengan teknologi '
                'dan senang belajar hal-hal baru.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),

              const SizedBox(height: 20), 
              const Text(
                'Media Sosial:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10), 
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // Align to center
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Image.asset(
                          '../assets/images/facebook.png',
                          width: 40,
                          height: 40,
                        ),
                        onPressed: () {
                          
                        },
                      ),
                      const SizedBox(height: 8),
                      const Text('Adit Muhti', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Image.asset(
                          '../assets/images/instagram.png',
                          width: 45,
                          height: 45,
                        ),
                        onPressed: () {
                    
                        },
                      ),
                      const SizedBox(height: 8),
                      const Text('aditmuhti', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Image.asset(
                          '../assets/images/tiktok.png',
                          width: 40,
                          height: 40,
                        ),
                        onPressed: () {
                          
                        },
                      ),
                      const SizedBox(height: 8),
                      const Text('Sang pabu24', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
