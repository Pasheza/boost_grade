import 'dart:math';

import 'package:flutter/material.dart';

MaterialColor getRandomColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}

List<Color> getColorList(int count) {
  List<Color> result = [];
  for (int i=0; i<count; i++) {
    result.add(getRandomColor());
  }
  return result;
}
