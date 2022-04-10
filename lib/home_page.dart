import 'package:boost_grade/colors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: black,
            shadows: [
              Shadow(
                color: black.withOpacity(0.4),
                offset: const Offset(0, 3),
                blurRadius: 7,
              )
            ]
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            MainPageButton(title: '4 квадрата'),
            MainPageButton(title: 'Цветной список'),
            MainPageButton(title: 'Codelab'),
            MainPageButton(title: 'Асинхронный запрос'),
          ],
        ),
      ),
    );
  }
}

class MainPageButton extends StatelessWidget {
  final String title;
  const MainPageButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: const TextStyle(color: black)),
            const Icon(Icons.arrow_forward_outlined, color: black),
          ]
        ),
        onPressed: () {},
      ),
    );
  }
}
