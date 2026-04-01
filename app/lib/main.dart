import 'package:flutter/material.dart';

void main() => runApp(const DevPlatformApp());

class DevPlatformApp extends StatelessWidget {
  const DevPlatformApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZL Dev Labs',
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ZL Dev Labs')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                const SnackBar(content: Text('Hello from ZL Dev Labs')),
              );
          },
          child: const Text('Say Hello'),
        ),
      ),
    );
  }
}
