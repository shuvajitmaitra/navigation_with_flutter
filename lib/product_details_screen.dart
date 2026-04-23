import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String id;
  const ProductDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ProductDetailsScreen $id')),
      body: Center(child: Text('ProductDetailsScreen Screen $id')),
    );
  }
}
