import 'package:fluster/widgets/TitleCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ButtonCard.dart';
import 'ImageCard.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({super.key, required this.card});

  final Map<String, String> card;

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      width: double.infinity,
      height: 360,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: TitleCard(nombre: card["nombre"]!,),
            ),
            Text(
                card["descripcion"]!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis),
            ImageCard(direccion: card["imagen"]!),
            ButtonCard()
          ],
        ),
      ),
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
    );
  }
}
