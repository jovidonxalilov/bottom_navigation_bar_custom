import 'package:flutter/material.dart';


class BottomBarItem {
  final String imagePath;
  final String title;
  final TextStyle? textStyle;

  BottomBarItem({
    this.textStyle,
    required this.title,
    required this.imagePath,
  });
}
