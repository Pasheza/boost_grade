import 'dart:math';

import 'package:flutter/material.dart';

MaterialColor getRandomColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}
