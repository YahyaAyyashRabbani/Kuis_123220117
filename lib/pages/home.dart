import 'package:flutter/material.dart';
import 'package:kuis_f/data/clothes_data.dart';
import 'detail.dart';

class HomePage extends StatelessWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome, $username")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) => _clothesList(context, index),
        itemCount: clothesList.length,
      ),
    );
  }
}

Widget _clothesList(BuildContext context, int index) {
  return InkWell(
    onTap: () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => DetailPage(index: index)));
    },
    child: Column(
      children: [
        Image.network(
          clothesList[index].imageUrl,
          height: 70,
        ),
        Text(clothesList[index].name),
        Text(clothesList[index].brand),
      ],
    ),
  );
}
