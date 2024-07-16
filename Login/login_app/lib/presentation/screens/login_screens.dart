import 'package:flutter/material.dart';
import 'package:login_app/presentation/provider/login_provider.dart';
import 'package:login_app/presentation/screens/register_screens.dart';
import 'package:login_app/presentation/widgets/Auth/home_widgets.dart';
import 'package:login_app/presentation/widgets/shared/bottons_widgets.dart';
import 'package:provider/provider.dart';

class LoginScreens extends StatelessWidget {
  
  const LoginScreens({super.key});

  @override
  Widget build(BuildContext context) {

    final loginService = context.watch<LoginProvider>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    String respuesta ;

    const Column header = Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Mi App", style: TextStyle(color: Colors.white, fontSize: 46.0)),
          Text("Bienvenido a mi Aplicacion",
              style: TextStyle(color: Colors.white, fontSize: 20.0))
        ]);

    
    final List<Widget> listBody = [
      TextField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: const Color(0xFFe7edeb),
            hintText: "E-mail",
            prefixIcon: Icon(Icons.email,color: Colors.grey[600])),
      ),
      const SizedBox(height: 20.0),
      TextField(
        obscureText: true,
        controller: passwordController,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: const Color(0xFFe7edeb),
            hintText: "Password",
            prefixIcon: Icon( Icons.no_encryption_rounded,  color: Colors.grey[600])),
      ),
      const SizedBox(height: 10.0),
      Row(children: [
        Expanded(child: Text("Recuperar Contraseña",textAlign: TextAlign.end,style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue[900])))
      ]),
      const SizedBox(height: 50.0),
       SizedBox(
        width: 250,
        child: BottonsWidgets(
          title: "Login",
          fontSize: 16.0,
          backgroundColor: const Color.fromARGB(255, 27, 116, 189),
          colorTitle: Colors.white, 
          onPressed: () async => {
               respuesta = await loginService.postLogin(emailController.text, passwordController.text),
              


          }
        )
      ),
      const SizedBox(height: 10.0),
       SizedBox(
        width: 250,
        child: BottonsWidgets(
          title: "Registrar",
          fontSize: 16.0,
          backgroundColor: const Color.fromARGB(255, 27, 116, 189),
          colorTitle: Colors.white, 
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreens())))
      )
    ];

    return Scaffold(body: HomeWidgets(header: header, listCampos: listBody));
  }
}
