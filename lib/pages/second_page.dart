import 'package:flutter/material.dart';
import '../model/model.dart' as model;

class DetailPage extends StatelessWidget {
  final model.Item item;

  DetailPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalles de ${item.name}"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            item.imageUrl,
            height: 200,
          ),
          const SizedBox(height: 20),
          Text(
            "Letra corta de ${item.name}",
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            textAlign: TextAlign.center,
          ),
          Text(
            item.letra,
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      )),
    );
  }
}
