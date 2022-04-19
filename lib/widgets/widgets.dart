import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final List<Color> colorList;
  const CustomGridView({ 
    Key? key,
    required this.colorList
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        itemCount: colorList.length,
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ), 
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(8),
          color: colorList[index]
        )
      ),
    );
  }
}
