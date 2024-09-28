import 'package:fluster/widgets/ServiciosApi.dart';
import 'package:fluster/widgets/TextFieldGeneral.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AppBar, Center, Colors, ElevatedButton, Icons, InputDecoration, MaterialApp, Navigator, OutlinedButton, Scaffold, StatelessWidget, Text, TextField;
import 'package:flutter/src/widgets/framework.dart';
class Autenticacion extends StatelessWidget {
  final ServiciosApi serviciosApi = ServiciosApi();

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controllerUsuario = TextEditingController();
    final TextEditingController _controllerClave = TextEditingController();

    autenticar() {

      if (_controllerUsuario.text.isNotEmpty && _controllerClave.text.isNotEmpty){
        this.serviciosApi.autenticarUsuario(
            _controllerUsuario.text,
            _controllerClave.text);
      }

    }

    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffd5c0c0),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Mi Aplicacion",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        "Iniciar Sesion",
                        style: TextStyle(
                            color: Color(0xff720404),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    )
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                _textFieldUsuario(_controllerUsuario),
                _textFieldClave(_controllerClave),
                SizedBox(
                  height: 25.0,
                ),
                _raiseButton(autenticar),

              ],
            ),
          ),
        ));

  }

  Widget _textFieldUsuario(TextEditingController _controller) {
    return TextFieldGeneral(
        labelCaja: "Nombre de usuario",
        hintText: "Elsa Patero",
        onChanged: (value) {},
        icon: Icons.person_outline,
        controller: _controller
    );
  }

  Widget _textFieldClave(TextEditingController _controller) {
    return TextFieldGeneral(
        labelCaja: "Contraseña",
        onChanged: (value) {},
        icon: Icons.lock_outline_rounded,
        obscureText: true,
        controller: _controller

    );
  }

  Widget _raiseButton(VoidCallback onPressed) {
    return OutlinedButton(
        onPressed: onPressed,
        child: const Text("Ingresar"),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7), // Esquinas redondeadas
          ),
          padding: EdgeInsets.symmetric(
              horizontal: 24, vertical: 12), // Color del texto del botón
        )
    );

  }


}
