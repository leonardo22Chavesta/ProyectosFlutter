import 'package:flutter/material.dart';
import 'package:login_app/presentation/screens/login_screens.dart';
import 'package:login_app/presentation/widgets/Auth/home_widgets.dart';
import 'package:login_app/presentation/widgets/shared/bottons_widgets.dart';


class RegisterScreens extends StatelessWidget {
  const RegisterScreens({super.key});

  @override
  Widget build(BuildContext context) {
     const Column header = Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Usuario Nuevo", style: TextStyle(color: Colors.white, fontSize: 46.0)),
          Text("Registrese Porfavor",
              style: TextStyle(color: Colors.white, fontSize: 20.0))
        ]);

    final List<Widget> listBody = [
      TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: const Color(0xFFe7edeb),
            hintText: "Nombre",
            prefixIcon: Icon(Icons.account_circle,color: Colors.grey[600])),
      ),
      const SizedBox(height: 10.0),
       TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: const Color(0xFFe7edeb),
            hintText: "Apellido",
            prefixIcon: Icon(Icons.account_circle,color: Colors.grey[600])),
      ),
      const SizedBox(height: 10.0),
      TextField(
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
      const SizedBox(height: 10.0),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: const Color(0xFFe7edeb),
            hintText: "Password",
            prefixIcon: Icon( Icons.no_encryption_rounded,  color: Colors.grey[600])),
      ),
      const SizedBox(height: 30.0),
       SizedBox(
        width: 250,
        child: BottonsWidgets(
          title: "Login",
          fontSize: 16.0,
          backgroundColor: const Color.fromARGB(255, 27, 116, 189),
          colorTitle: Colors.white, 
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreens()))
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


    return Scaffold(body: HomeWidgets( header:header ,listCampos: listBody,),);
  }
}