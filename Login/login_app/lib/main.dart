
import 'package:flutter/material.dart';
import 'package:login_app/presentation/provider/login_provider.dart';
import 'package:login_app/presentation/screens/login_screens.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreens()
        ),
    );
  }
}