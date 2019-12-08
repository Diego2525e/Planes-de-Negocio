import 'package:flutter/material.dart';
import 'package:planes_app/pages/app.dart';
import 'package:planes_app/pages/login.dart';
import 'package:planes_app/pages/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      initialRoute: 'app',
      // onGenerateRoute: ,
      routes: <String, WidgetBuilder>{
        'login':        (BuildContext context) => Login(),
        'register':     (BuildContext context) => Register(),
        'app':          (BuildContext context) => App(),
      },
      
    );
  }
}
