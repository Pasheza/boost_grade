import 'package:boost_grade/resources/colors.dart';
import 'package:boost_grade/utils/colors_util.dart';
import 'package:boost_grade/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FourSquaresPage extends StatefulWidget {
  const FourSquaresPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<FourSquaresPage> createState() => _FourSquaresPageState();
}

class _FourSquaresPageState extends State<FourSquaresPage> {
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
      body: CustomGridView(
        childCount: 4,
        child: _getGridTile(),
      ),
    );
  }
}

Widget _getGridTile() {
  return Container(
    padding: const EdgeInsets.all(8),
    color: getRandomColor()
  );
}
