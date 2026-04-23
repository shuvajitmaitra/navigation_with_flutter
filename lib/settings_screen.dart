import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SettingsScreen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SettingsScreen Screen'),
            ElevatedButton(
              onPressed: () {
                context.go('/profile');
              },
              child: Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
