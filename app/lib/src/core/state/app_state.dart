import 'package:flutter/material.dart';
import '../services/counter_service.dart';
import '../services/api_service.dart';
import '../services/ai_service.dart'; 

class AppState extends ChangeNotifier {
  final AiService _aiService = AiService();

  String _aiResponse = "";
  String get aiResponse => _aiResponse;

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

  Future<void> generateAiResponse(String prompt) async {
    _aiResponse = "Loading...";
    notifyListeners();

    final result = await _aiService.generateResponse(prompt);

    _aiResponse = result;
    notifyListeners();
  }
}