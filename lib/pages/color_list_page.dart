import 'package:boost_grade/utils/colors_util.dart';
import 'package:boost_grade/widgets/widgets.dart';
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
      appBar: CustonAppBar(
        title: widget.title
      ),
      floatingActionButton: CustomFAB(
        onPressed: () {
          setState(() {});
        },
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

