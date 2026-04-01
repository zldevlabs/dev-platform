import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/state/app_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('ZL Dev Labs')),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 760,
                    minHeight: math.max(0, constraints.maxHeight - 48),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Dev Platform',
                        style: textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'A polished Flutter starter for validating the AI-assisted development workflow.',
                        style: textTheme.titleMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 32),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Counter',
                                style: textTheme.labelLarge?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: colorScheme.primaryContainer,
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${appState.counter}',
                                      style: textTheme.displaySmall?.copyWith(
                                        color: colorScheme.onPrimaryContainer,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'Update local state instantly with the increment action below.',
                                      style: textTheme.bodyLarge?.copyWith(
                                        color: colorScheme.onPrimaryContainer,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                'Quick actions',
                                style: textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 12),
                              OverflowBar(
                                spacing: 12,
                                overflowSpacing: 12,
                                alignment: MainAxisAlignment.start,
                                children: [
                                  FilledButton.icon(
                                    onPressed: () {
                                      appState.increment();
                                    },
                                    icon: const Icon(Icons.add_rounded),
                                    label: const Text('Increment'),
                                  ),
                                  OutlinedButton.icon(
                                    onPressed: () {
                                      appState.fetchMessage();
                                    },
                                    icon: const Icon(
                                      Icons.cloud_download_outlined,
                                    ),
                                    label: const Text('Fetch Message'),
                                  ),
                                  TextButton.icon(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/about');
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward_rounded,
                                    ),
                                    label: const Text('Go to About'),
                                  ),
                                  TextButton.icon(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/ai');
                                    },
                                    icon: const Icon(Icons.smart_toy_outlined),
                                    label: const Text('AI Feature'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Latest message',
                                style: textTheme.labelLarge?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                appState.message,
                                style: textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'This reflects the current state from the existing service flow.',
                                style: textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
