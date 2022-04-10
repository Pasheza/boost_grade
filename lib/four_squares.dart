import 'dart:math';

import 'package:flutter/material.dart';

class FourSquares extends StatefulWidget {
  const FourSquares({Key? key}) : super(key: key);

  @override
  State<FourSquares> createState() => _FourSquaresState();
}

class _FourSquaresState extends State<FourSquares> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.create),
        onPressed: (){
          setState(() {});
        },
      ),
      appBar: AppBar(
        title: const Text('4 квадрата', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
          child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: randomColor(),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: randomColor(),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: randomColor(),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: randomColor(),
          ),
        ],
      )),
    );
  }
}

MaterialColor randomColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}
