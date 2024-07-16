import 'package:flutter/material.dart';
import 'package:login_app/helpers/login_service.dart';
import 'package:login_app/infrastructure/models/request_mode.dart';

class LoginProvider extends ChangeNotifier {
  
  final login = LoginService();

  Future<String> postLogin(String email, String password) async {
    if(email.isEmpty || password.isEmpty ) return "Ingrese Datos faltantes";

    final request = RequestMode(email: email, password: password);

    final response = await login.postLogin(request);

    if(response.accessToken.isEmpty) return "Fallo";

    notifyListeners();

    return response.accessToken.toString();

  }

}

/*
showDialog(context:context, builder: (context) => AlertDialog(
                actions: [
                  TextButton(onPressed: () => Navigator.of(context).pop, child: const Text("Cerrar"))
                ],
                title: const Text("Alert Notifi"),
                contentPadding: const EdgeInsets.all(20.0),
                content:  Text("Esta es la alerta $respuesta"),
               ))

 */
