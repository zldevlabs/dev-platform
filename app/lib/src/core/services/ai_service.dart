import 'dart:async';

class AiService {
  Future<String> generateResponse(String prompt) async {
    await Future.delayed(const Duration(seconds: 1));
    return "AI says: ${prompt.toUpperCase()} 🚀";
  }
}