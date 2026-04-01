import 'package:flutter/material.dart';
import '../services/counter_service.dart';

class AppState extends ChangeNotifier {
  final CounterService _counterService = CounterService();

  int get counter => _counterService.counter;

  void increment() {
    _counterService.increment();
    notifyListeners();
  }
}