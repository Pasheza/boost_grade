import 'package:boost_grade/resources/colors.dart';
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

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  const CustomAppBar({ Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: Theme.of(context).iconTheme,
      title: Text(
        title,
        style: const TextStyle(color: black)
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomFAB extends StatelessWidget {

  final Function()? onPressed;
  const CustomFAB({ Key? key, required this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      onPressed: onPressed,
      child: Icon(
        Icons.create,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}

class CustomListView extends StatelessWidget {

  final List<Color> colorList;
  const CustomListView({ Key? key, required this.colorList }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, i) {
          return Card(
            child: ListTile(
            tileColor: colorList[i],
            ),
          );
        }
      );
  }
}
