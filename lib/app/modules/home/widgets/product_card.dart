import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String? image;

  const ProductCard({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        child: Image.network(
          image ?? "",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
