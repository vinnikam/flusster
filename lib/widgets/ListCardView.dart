import 'package:fluster/data/data.dart';
import 'package:flutter/material.dart';

import 'FeedCard.dart';

class Listcardview extends StatelessWidget {
  const Listcardview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: listcard.length,
        itemBuilder: (context, index){
          return FeedCard(card: listcard[index]);
        });
  }
}