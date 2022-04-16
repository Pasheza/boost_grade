import 'package:boost_grade/pages/four_squares_page.dart';
import 'package:boost_grade/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:boost_grade/resources/pages_list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.apply(
            shadows: [
              Shadow(
                color: black.withOpacity(0.4),
                offset: const Offset(0, 3),
                blurRadius: 7,
             )
            ]
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MainPageButton(
              title: fourSquaresPageTitle,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FourSquaresPage(title: fourSquaresPageTitle))
                );
              },
            ),
            MainPageButton(title: colorListPageTitle, onPressed: (){},),
            MainPageButton(title: codelabPageTitle, onPressed: (){}),
            MainPageButton(title: asyncRequestPagetitle, onPressed: (){}),
          ],
        ),
      ),
    );
  }
}

class MainPageButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;

  const MainPageButton({
    Key? key, 
    required this.title, 
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title, 
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Icon(
              Icons.arrow_forward_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
          ]
        ),
      ),
    );
  }
}
