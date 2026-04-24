import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../config/route_names.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Profile', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            const Text(
              'Navigate to cross-tab screens.\nBack will return here.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: 220,
              child: FilledButton(
                onPressed: () => context.push(RouteNames.address),
                child: const Text('Go to Address'),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: 220,
              child: FilledButton(
                onPressed: () => context.push(RouteNames.checkout),
                child: const Text('Go to Checkout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
