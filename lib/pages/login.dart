import 'package:flutter/material.dart';
import 'package:planes_app/providers/userProvider.dart';

import 'app.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userProvider = new UserProvider();

  final formKey = GlobalKey<FormState>();

  String _emailText, _passwordText;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: SingleChildScrollView(
                padding: const EdgeInsets.all(30),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: ExactAssetImage('assets/login.jpg'),
                        minRadius: 90,
                        maxRadius: 130,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Login",
                          style: new TextStyle(fontSize: 25),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: TextFormField(
                          onSaved: (value) => _emailText = value,
                          decoration: InputDecoration(labelText: 'Correo Electrónico'),
                          validator: (value) {
                            if (value.length < 3) {
                              return 'Ingrese el correo electrónico del usuario';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: TextFormField(
                            onSaved: (value) => _passwordText = value,
                            decoration:
                                InputDecoration(labelText: 'Contraseña'),
                            validator: (value) {
                              if (value.length < 3) {
                                return 'Ingrese una Contraseña';
                              } else {
                                return null;
                              }
                            },
                            autofocus: false,
                            obscureText: true,
                          )),
                      ButtonTheme(
                        minWidth: 250.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Text("Ingresar"),
                          onPressed: () {
                            _login(context);
                          },
                          color: Colors.blue,
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          splashColor: Colors.blue[50],
                        ),
                      ),
                      FlatButton(
                        child: Text('Registrarse'),
                        onPressed: () =>
                            Navigator.pushReplacementNamed(context, 'register'),
                      )
                    ],
                  ),
                ))),
      ),
    );
  }

  _login(BuildContext context) async{
    if (!formKey.currentState.validate()) return;
    formKey.currentState.save();
    Map info = await userProvider.login(_emailText, _passwordText);
    print(info);
    if(info['ok']){
      Navigator.pushReplacement(context, 
                MaterialPageRoute(
                  builder: (context)=>App()
                )
              );
    }else{
      print('Credenciales no validas');
    }
  }
}
