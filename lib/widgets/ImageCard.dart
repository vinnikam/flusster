import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.direccion
  });
  final String direccion;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        child: Image.network(
          direccion,
          fit: BoxFit.cover,
        ));
  }
}
