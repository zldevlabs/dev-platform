import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/state/app_state.dart';
import 'features/home/home_page.dart';
import 'features/about/about_page.dart';
import 'features/ai/ai_page.dart';

class DevPlatformApp extends StatelessWidget {
  const DevPlatformApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppState(),
      child: MaterialApp(
        title: 'Dev Platform',
        theme: ThemeData(useMaterial3: true),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/about': (context) => const AboutPage(),
          '/ai': (context) => AiPage(),
        },
      ),
    );
  }
}