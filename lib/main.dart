import 'package:flutter/material.dart';
import 'package:login/screens/home.dart';
import 'package:login/screens/login.dart';
import 'package:login/screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: <String, WidgetBuilder>{
      '/': (context) => const LoginPage(),
      '/register': (context) => const RegisterPage(),
      '/home': (context) => const HomePage(),
    });
  }
}
