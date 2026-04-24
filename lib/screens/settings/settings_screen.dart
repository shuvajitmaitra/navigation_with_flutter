import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../config/route_names.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Settings', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            SizedBox(
              width: 220,
              child: FilledButton(
                onPressed: () => context.push(RouteNames.address),
                child: const Text('Manage Address'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
