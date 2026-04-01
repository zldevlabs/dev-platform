import 'dart:async';

class ApiService {
  Future<String> fetchMessage() async {
    await Future.delayed(const Duration(seconds: 1));
    return "Hello from API 🚀";
  }
}