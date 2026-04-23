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
                context.push('/profile');
              },
              child: Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                context.push(
                  Uri(
                    path: '/productDetails',
                    queryParameters: {
                      'id': 'AIzaSyB6aeBDdNGAZGomMpevur-9Ed83EZGt3zg',
                      'firstName': 'Shuvajit',
                      'lastName': 'Maitra',
                    },
                  ).toString(),
                );
              },
              child: Text('Product Details'),
            ),
          ],
        ),
      ),
    );
  }
}
