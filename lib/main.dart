import 'package:flutter/material.dart';
import 'package:planes_app/pages/app.dart';
import 'package:planes_app/pages/example.dart';
import 'package:planes_app/pages/home.dart';
import 'package:planes_app/pages/login.dart';
import 'package:planes_app/pages/profile.dart';
import 'package:planes_app/pages/register.dart';
import 'package:planes_app/pages/search.dart';

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
        'home':         (BuildContext context) => Home(),
        'search':       (BuildContext context) => Search(),
        'profile':      (BuildContext context) => Profile(),
        'example':      (BuildContext context) => MyApp2(),
        'app':          (BuildContext context) => App(),
      },
      
    );
  }
}
