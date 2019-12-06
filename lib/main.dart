import 'package:flutter/material.dart';
import 'package:planes_app/pages/home.dart';
import 'package:planes_app/pages/login.dart';
import 'package:planes_app/pages/register.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Login(),
        'register': (BuildContext context) => Register(),
        'home': (BuildContext context) => Home(),
      },
    );
  }
}
