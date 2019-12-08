import 'package:flutter/material.dart';
import 'package:planes_app/providers/userProvider.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final userProvider = new UserProvider();
  final formKey = GlobalKey<FormState>();
  String _emailText, _passwordText, _passwordText2;
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
                        backgroundImage: ExactAssetImage('assets/register.jpg'),
                        minRadius: 90,
                        maxRadius: 130,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Registro",
                          style: new TextStyle(fontSize: 25),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: TextFormField(
                          onSaved: (value) => _emailText = value,
                          decoration: InputDecoration(labelText: 'Usuario'),
                          validator: (value) {
                            if (value.length < 3) {
                              return 'Ingrese el nombre del usuario';
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
                                InputDecoration(labelText: 'Contrasena'),
                            validator: (value) {
                              if (value.length < 3) {
                                return 'Ingrese una contrasena';
                              } else {
                                return null;
                              }
                            },
                            autofocus: false,
                            obscureText: true,
                          )),
                      Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: TextFormField(
                            onSaved: (value) => _passwordText2 = value,
                            decoration: InputDecoration(
                                labelText: 'Repetir contrasena'),
                            validator: (value) {
                              if (value.length < 3) {
                                return 'Ingrese una contrasena';
                              } else {
                                return null;
                              }
                            },
                            autofocus: false,
                            obscureText: true,
                          )),
                      ButtonTheme(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        minWidth: 250.0,
                        child: RaisedButton(
                          child: Text("Registrarse"),
                          onPressed: () {
                            _register(context);
                          },
                          color: Colors.blue,
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          splashColor: Colors.blue[50],
                        ),
                      ),
                      FlatButton(
                        child: Text('Login'),
                        onPressed: () =>
                            Navigator.pushReplacementNamed(context, 'login'),
                      )
                    ],
                  ),
                ))),
      ),
    );
  }

  _register(BuildContext context) {
    if (!formKey.currentState.validate()) return;
    formKey.currentState.save();
    if (_passwordText != _passwordText2) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('No coinciden las contrasenas'),
            );
          });
    }else{
      userProvider.nuevoUsuario(_emailText, _passwordText);
      print('Llego aqui');
    }
    
  }
}
