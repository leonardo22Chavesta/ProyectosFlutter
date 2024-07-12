import 'package:flutter/material.dart';

class LoginScreens extends StatelessWidget {
  const LoginScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors:  [
                     Color.fromARGB(255, 21, 101, 192), 
                     Color.fromARGB(255, 30, 136, 229),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight
                )),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 36.0, horizontal: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mi App",style: TextStyle(color: Colors.white,fontSize: 46.0), ),
                          Text("Bienvenido a mi Aplicacion",style: TextStyle(color: Colors.white,fontSize: 20.0), )
                      ]),
                    ),
                  ),
                  Expanded(
                    flex: 5, 
                    child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.all(24.0),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide.none
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xFFe7edeb),
                                  hintText: "E-mail",
                                  prefixIcon: Icon(Icons.email, color: Colors.grey[600],)
                                ),
                              ),
                              const SizedBox(height: 20.0,),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide.none
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xFFe7edeb),
                                  hintText: "Password",
                                  prefixIcon: Icon(Icons.no_encryption_rounded, color: Colors.grey[600],)
                                ),
                              ),
                              const SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  Expanded(
                                    child: 
                                      Text("Recuperar Contraseña",textAlign: TextAlign.end ,style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue[900]),),
                                    )
                                ]
                                
                              ),
                              const SizedBox(height: 50.0,),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  
                                    backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 27, 116, 189)),
                                  ),
                                child: const Padding(
                                  padding:  EdgeInsets.symmetric(vertical: 16.0),
                                  child:  Text('Login', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                                )
                                ) ,
                             
                              )
                            ],
                            ),
                        ),
                  ) )
                ],
              ),
        ),
      ),
    );
  }
}
