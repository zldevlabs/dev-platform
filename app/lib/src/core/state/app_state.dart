import 'package:flutter/material.dart';
import '../services/counter_service.dart';
import '../services/api_service.dart';

class AppState extends ChangeNotifier {
  final CounterService _counterService = CounterService();
  final ApiService _apiService = ApiService();

  int get counter => _counterService.counter;

  String _message = "No message yet";
  String get message => _message;

  void increment() {
    _counterService.increment();
    notifyListeners();
  }

  Future<void> fetchMessage() async {
    _message = "Loading...";
    notifyListeners();

    final result = await _apiService.fetchMessage();

    _message = result;
    notifyListeners();
  }
}