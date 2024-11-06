import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'MonaSans',
      ),
      home: ListScreen(),
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.network(
                      'https://static.vecteezy.com/system/resources/previews/030/258/039/large_2x/beautiful-nature-wallpaper-hd-wallpaper-ai-generated-free-photo.jpg',
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.network(
                      'https://m.media-amazon.com/images/I/81MClsmL6TL._SL500_.jpg',
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.network(
                      'https://img.freepik.com/premium-photo/wide-angle-shot-single-tree-growing-clouded-sky-sunset-surrounded-by-grass_181624-22807.jpg?semt=ais_hybrid',
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'MonaSans Regular',
                style: TextStyle(
                    fontFamily: 'MonaSans', fontStyle: FontStyle.normal),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text(
                'MonaSans Italic',
                style: TextStyle(
                    fontFamily: 'MonaSans',
                    fontStyle: FontStyle.italic), // Italic variant
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              trailing: CircleAvatar(child: Icon(Icons.person)),
              title: Text(
                'MonaSan Bold',
                style: TextStyle(
                    fontFamily: 'MonaSans', fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.star),
              title: Text(
                'Arial',
                style: TextStyle(fontFamily: 'Arial'),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              trailing: Icon(Icons.cake),
              title: Text(
                'Times New Roman',
                style: TextStyle(fontFamily: 'Times New Roman'),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
