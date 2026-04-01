import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/state/app_state.dart';

class AiPage extends StatefulWidget {
  const AiPage({super.key});

  @override
  State<AiPage> createState() => _AiPageState();
}

class _AiPageState extends State<AiPage> {
  final TextEditingController _controller = TextEditingController();
  String _response = "";

  void _generateResponse(BuildContext context) {
    final appState = context.read<AppState>();
    appState.generateAiResponse(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Feature'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter prompt',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _generateResponse(context),
              child: const Text('Generate'),
            ),
            const SizedBox(height: 20),
            Text(
              appState.aiResponse,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}