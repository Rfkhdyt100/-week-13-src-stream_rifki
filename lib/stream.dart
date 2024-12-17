import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.transparent,
    Colors.deepOrange,
    Colors.amber
  ];

  Stream<Color> getColor() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
}
