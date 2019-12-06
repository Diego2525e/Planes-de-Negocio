import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: ExactAssetImage('assets/login.jpg'),
                minRadius: 90,
                maxRadius: 150,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "LOGIN",
                  style: new TextStyle(fontSize: 30),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "User",
                      style: new TextStyle(fontSize: 15, color: Colors.blue),
                      textAlign: TextAlign.left,
                    ),
                    TextField(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Password",
                      style: new TextStyle(fontSize: 15, color: Colors.blue),
                      textAlign: TextAlign.left,
                    ),
                    TextField(
                      autofocus: false,
                      obscureText: true,
                    )
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: 250.0,
                child: RaisedButton(
                  child: Text("Ingresar"),
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  splashColor: Colors.blue[50],
                ),
              ),
              FlatButton(
                child: Text('Registrarse'),
                onPressed: ()=> Navigator.pushReplacementNamed(context, 'register'),
              )
            ],
          ),
        )),
      ),
    );
  }
}
