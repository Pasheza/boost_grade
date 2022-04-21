
import 'package:boost_grade/resources/colors.dart';
import 'package:boost_grade/utils/colors_util.dart';
import 'package:flutter/material.dart';

const int listCount = 1000;

class ColorListPage extends StatefulWidget {
  const ColorListPage({ Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ColorListPage> createState() => _ColorListPageState();
}

class _ColorListPageState extends State<ColorListPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        title: Text(
          widget.title,
          style: const TextStyle(color: black)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        onPressed: (){
          setState(() {});
        },
        child: Icon(
          Icons.create,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      body: ListView.builder(
        itemCount: listCount,
        itemBuilder: (context, i) {
          return Card(
            child: ListTile(
            tileColor: getRandomColor(),
            ),
          );
        }
      )
    );
  }
}

