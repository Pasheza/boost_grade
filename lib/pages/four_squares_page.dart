import 'package:boost_grade/resources/colors.dart';
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

  List<Color> _colors = _getColorList();

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
          setState(() {
            _colors = _getColorList();
          });
        },
        child: Icon(
          Icons.create,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      body: CustomGridView(
        colorList: _colors,
        
      ),
    );
  }
}

List<Color> _getColorList() {
  List<Color> result = [];
  for (int i=0; i<squareCount; i++) {
    result.add(getRandomColor());
  }
  return result;
}
