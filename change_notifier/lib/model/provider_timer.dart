import 'dart:async';
import 'package:flutter/material.dart';

class ProviderTimer extends ChangeNotifier {

  Timer? _timer;

  int _seconds = 0;

  bool _isRunning = false;

int get seconds => _seconds;

bool get isRunning => _isRunning;

  void startTimer() {
    if (!_isRunning) {
      _isRunning = true;
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        _seconds++;
        notifyListeners();
      });



}