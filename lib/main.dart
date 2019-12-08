import 'package:flutter/material.dart';
import 'package:planes_app/pages/app.dart';
import 'package:planes_app/pages/login.dart';
import 'package:planes_app/pages/profile_edit.dart';
import 'package:planes_app/pages/register.dart';
import 'package:planes_app/preferencias_usuario/preferencias_usuario.dart';

void main() async{
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      initialRoute: 'login',
      routes: <String, WidgetBuilder>{
        'login':        (BuildContext context) => Login(),
        'register':     (BuildContext context) => Register(),
        'app':          (BuildContext context) => App(),
        'profileEdit':  (BuildContext context) => ProfileEdit(),
      },
      
    );
  }
}
