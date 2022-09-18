import 'package:flutter/cupertino.dart';

class SearchBarProvider with ChangeNotifier {
  String _query = '';

  String get query => _query;

  void setQuery(String enteredText) {
    _query = enteredText;
    notifyListeners();
  }
}
