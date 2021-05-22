import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  var _text;

  void setText(var text) {
    _text = text;
    notifyListeners();
  }

  String get getText {
    return _text;
  }
}