import 'package:flutter/material.dart';

extension AppExtension on BuildContext {
  Size get size => MediaQuery.of(this).size;

  double get width => size.width;

  double get height => size.height;

  Future push(Widget widget) async {
    return Navigator.push(
        this,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }

  void pop() {
    Navigator.pop(this);
  }
}
