import 'package:fluster/widgets/Autenticacion.dart';
import 'package:fluster/widgets/FeedCard.dart';
import 'package:fluster/widgets/ListCardView.dart';
import 'package:fluster/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaLogIn extends StatelessWidget{
  const PantallaLogIn({super.key});
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Text("Autenticarse"),
        backgroundColor: Colors.blue,
      ),
      body: Autenticacion(),
      backgroundColor: Colors.grey[300],
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          }, child: const Text("Regresar")),
    );

  }

}

