import 'package:fluster/widgets/LikeButton.dart';
import 'package:flutter/material.dart';

class ButtonsCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.grey,
        fontSize: 14,
        fontFamily: "Arial"
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const LikeButton(),
        TextButton(
            onPressed: () {}, child: Text("Comentar", style: textStyle)),
        TextButton(
            onPressed: () {}, child: Text("Compartir", style: textStyle)),
      ],
    );
  }
  
  
}
