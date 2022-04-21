import 'package:boost_grade/utils/colors_util.dart';
import 'package:boost_grade/widgets/widgets.dart';
import 'package:flutter/material.dart';

const int squareCount = 4;

class FourSquaresPage extends StatefulWidget {
  const FourSquaresPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<FourSquaresPage> createState() => _FourSquaresPageState();
}

class _FourSquaresPageState extends State<FourSquaresPage> {

  List<Color> _colors = getColorList(squareCount);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustonAppBar(
        title: widget.title
      ),
      floatingActionButton: CustomFAB(
        onPressed: () {
          setState(() {
            _colors = getColorList(squareCount);
          });
        },
      ),
      body: CustomGridView(
        colorList: _colors,
      ),
    );
  }
}
