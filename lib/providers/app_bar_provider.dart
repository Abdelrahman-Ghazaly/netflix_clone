import 'package:flutter/material.dart';

class AppBarProvider with ChangeNotifier {
  double _scrollOffset = 0.0;

  double get scrollOffset => _scrollOffset;

  void setOffset(double offset) {
    _scrollOffset = offset;
    notifyListeners();
  }
}
