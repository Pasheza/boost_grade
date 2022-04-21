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

  List<Color> _colors = getColorList(listCount);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.title
      ),
      floatingActionButton: CustomFAB(
        onPressed: () {
          setState(() {
            _colors = getColorList(listCount);
          });
        },
      ),
      body: CustomListView(
        colorList: _colors,
      )
    );
  }
}

