import 'package:flutter/material.dart';
import 'package:kuis_f/data/clothes_data.dart';

class DetailPage extends StatefulWidget {
  final int index;
  const DetailPage({super.key, required this.index});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: ListView(
        children: [
          Image.network(clothesList[widget.index].imageUrl),
          Text(clothesList[widget.index].name),
          Text(clothesList[widget.index].category),
          Text(clothesList[widget.index].brand),
          Text(clothesList[widget.index].price.toString()),
          ElevatedButton.icon(
            onPressed: () {},
            label: Icon(Icons.add_shopping_cart),
          )
        ],
      ),
    );
  }
}
