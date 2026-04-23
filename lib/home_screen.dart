import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeScreen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('HomeScreen Screen'),
            ElevatedButton(
              onPressed: () {
                context.go('/profile');
              },
              child: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
