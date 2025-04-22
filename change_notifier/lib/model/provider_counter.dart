import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {

  int _times = 0;

  int get times => _times;

  void increment () {
    _times++;
    notifyListeners();



  }
}

