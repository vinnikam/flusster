import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,
    required this.nombre
  });
  final String nombre;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Text("V"),
        ),
        SizedBox(width: 10),
        Text(this.nombre,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color.fromARGB(
            255, 244, 67, 54)))
      ],
    );
  }
}