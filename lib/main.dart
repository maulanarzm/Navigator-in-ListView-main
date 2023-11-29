import 'package:flutter/material.dart';
import 'model/model.dart' as model;
import 'pages/second_page.dart' as second_page;
import 'data/data.dart' as data;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<model.Item> items = data.ItemData().items;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de canciones"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].name),
            subtitle: Text(items[index].description),
            textColor: Colors.blueGrey,
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/c/ca/CD-ROM.png'), 
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      second_page.DetailPage(item: items[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
