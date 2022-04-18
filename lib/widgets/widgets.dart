import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final Widget child;
  final int childCount;
  const CustomGridView({ 
    Key? key,
    required this.child,
    required this.childCount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          for (int i=0; i<childCount; i++)
            child
        ]
      )
    );
  }
}