import 'package:flutter/material.dart';

class AiPage extends StatefulWidget {
  const AiPage({super.key});

  @override
  State<AiPage> createState() => _AiPageState();
}

class _AiPageState extends State<AiPage> {
  final TextEditingController _controller = TextEditingController();
  String _response = "";

  void _generateResponse() {
    setState(() {
      _response = "AI response for: ${_controller.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
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
              onPressed: _generateResponse,
              child: const Text('Generate'),
            ),
            const SizedBox(height: 20),
            Text(
              _response,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}