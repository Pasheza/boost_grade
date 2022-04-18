import 'package:boost_grade/pages/four_squares_page.dart';
import 'package:boost_grade/resources/pages_list.dart';
import 'package:flutter/material.dart';

class FourSquaresPageRoute extends MaterialPageRoute {

  FourSquaresPageRoute() : super(
    builder: (context) => const FourSquaresPage(title: fourSquaresPageTitle)
  );
}