import 'package:fluster/widgets/FeedCard.dart';
import 'package:fluster/widgets/ListCardView.dart';
import 'package:fluster/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PantallaLog-in.dart';

class PantallaInicial extends StatelessWidget{
  const PantallaInicial({super.key});
  @override
  Widget build(BuildContext context) {

      return  Scaffold(
        appBar: AppBar(
          title: const Text("Titulo principal - Bar 1"),
          backgroundColor: Colors.blue,
        ),
        body: Listcardview(),
        backgroundColor: Colors.grey[300],
        floatingActionButton: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PantallaLogIn()));
            }, child: const Text("Autenticarse")),
      );

  }

}

