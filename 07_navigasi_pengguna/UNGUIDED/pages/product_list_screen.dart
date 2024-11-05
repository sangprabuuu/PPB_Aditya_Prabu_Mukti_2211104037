import 'package:flutter/material.dart';
import 'package:pertemuan7_4/models/product.dart';
import 'package:pertemuan7_4/pages/product_detail.dart';
import 'package:pertemuan7_4/main.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: 'p1',
      name: 'ssd m.2 external 1TB',
      description: 'penyimpanan external yang praktis untuk dibawa kemana saja',
      price: 1000000,
      imageUrl:
          'https://images.tokopedia.net/img/cache/900/product-1/2020/7/12/9191266/9191266_c95aa137-3aba-47b8-9301-d39f895b0294_700_700',
    ),
    Product(
      id: 'p2',
      name: 'iphone 15 pro max',
      description:
          'menyediakan berbagai fitur menarik dan kamera yang sangat jernih',
      price: 260000000,
      imageUrl:
          'https://p-id.ipricegroup.com/uploaded_9413b7b2fa614cae7bafa4c33ce23e2bc2ecaaec.jpg',
    ),
    Product(
      id: 'p3',
      name: 'asus ROG srtix',
      description: 'cocok untuk para gamers yang suka game dengan kualitas dan performa yang sangat bagus',
      price: 29000000,
      imageUrl:
          'https://assets.bmdstatic.com/web/image?model=product.product&field=image_1024&id=71638&unique=6586d82',
    ),
    Product(
      id: 'p4',
      name: 'Antimateri',
      description: 'benda termahal di dunia yang berfungsi sebagai bahan bakar terkuat',
      price: 925000000000000000,
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2022/08/11/antimateri_169.webp?w=700&q=90',
    ),
    Product(
      id: 'p5',
      name: 'Hot Wheels VW Combi',
      description: 'hotwheels gagal produk dan menjadi hot wheels pertama di dunia',
      price: 2500000000,
      imageUrl:
          'https://akcdn.detik.net.id/community/media/visual/2023/06/18/hot-wheels-pink-rear-loading-beach-bomb-yang-diproduksi-1969_169.jpeg?w=700&q=90',
    ),
  ];

  void onProductTap(BuildContext context, Product product) {
    showNotification(product.name, "Harga: Rp${product.price}");

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ProductDetailScreen(product: product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Embuh Store',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 217, 250),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7, // Rasio aspek kartu produk
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () => onProductTap(context, product),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.network(
                      product.imageUrl,
                      width: double.infinity,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Rp${product.price.toStringAsFixed(0)}',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red, // Warna merah untuk harga
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
