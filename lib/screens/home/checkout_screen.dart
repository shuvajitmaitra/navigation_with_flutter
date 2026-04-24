import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../config/route_names.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Checkout', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('(owned by Home tab)', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 32),
            SizedBox(
              width: 220,
              child: FilledButton(
                onPressed: () => context.push(RouteNames.payment),
                child: const Text('Proceed to Payment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
