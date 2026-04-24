import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../config/route_names.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            _NavButton(
              label: 'Go to Checkout',
              onTap: () => context.push(RouteNames.checkout),
            ),
            const SizedBox(height: 12),
            _NavButton(
              label: 'Go to Payment',
              onTap: () => context.push(RouteNames.payment),
            ),
            const SizedBox(height: 12),
            _NavButton(
              label: 'Go to Address',
              onTap: () => context.push(RouteNames.address),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _NavButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: FilledButton(onPressed: onTap, child: Text(label)),
    );
  }
}
