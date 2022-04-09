import 'package:flutter/material.dart';

import 'codelab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Главная'),
    );
  }
}

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
        title: Text(widget.title, style: const TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  <Widget>[
            MainPageButton(title: '4 квадрата', onPressed: (){}),
            MainPageButton(title: 'Цветной список', onPressed: (){}),
            MainPageButton(title: 'Codelab', onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CodelabPage()),
                );
            }),
            MainPageButton(title: 'Асинхронный запрос', onPressed: (){}),
          ],
        ),
      ),
    );
  }
}

class MainPageButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const MainPageButton({Key? key, required this.title, required this.onPressed}) : super(key: key);

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
            Text(title, style: const TextStyle(color: Colors.black)),
            const Icon(Icons.arrow_forward_outlined, color: Colors.black,),
          ]),
      onPressed: onPressed,
      ),
    );
  }
}
