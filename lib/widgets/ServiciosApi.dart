import 'package:http/http.dart' as http;
import 'dart:convert';

class ServiciosApi {
  final String apiUrl = 'http://localhost:4280/api/autenticar';

  Future<void> autenticarUsuario(String usuario, String clave) async {

    print('datos recibidos : '+usuario+' clave '+clave);
    if (usuario.isEmpty || clave.isEmpty){
      print('Error al enviar datos');
      return ;
    }
    final url = Uri.parse(apiUrl);
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': usuario,
        'password': clave,
      }),
    );

    if (response.statusCode == 200) {
      // Si la solicitud fue exitosa, procesa la respuesta
      print('Autenticación exitosa: ${response.body}');
    } else {
      // Si la solicitud falló, maneja el error
      print('Error en la autenticación: ${response.statusCode}');
    }
  }
}
