import 'package:flutter/material.dart';

import 'four_squares.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.create),
          onPressed: () {
            setState(() {});
          },
      ),
      appBar: AppBar(
        title: const Text('Цветной список'),
      ),
      body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, i) {
          return listCard();
        }
      )
    );
  }
}

Widget listCard() {
  return Card(
    child: ListTile(
      tileColor: randomColor(),
    ),
  );
}
