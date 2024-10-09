import 'package:flutter/material.dart';

class GridViewApp extends StatefulWidget {
  const GridViewApp({super.key});

  @override
  State<GridViewApp> createState() => _GridViewState();
}

class _GridViewState extends State<GridViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum 4'),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(12),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Gridview 1'),
            color: Colors.amberAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Gridview 2'),
            color: Colors.purpleAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Gridview 3'),
            color: Colors.redAccent,
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.orangeAccent, // Menambahkan warna pada Container
            child: Column(
              children: [
                Text('Gridview 4'),
                Icon(Icons.add),
              ],
            ),
          )
        ],
      ),
    );
  }
}
