import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        padding: const EdgeInsets.all(32),
        alignment: Alignment.center,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            new Container(
                height: 280.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: ExactAssetImage('assets/images/login.jpg'),
                    ))),
            new Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text("Login",style: new TextStyle(fontSize: 30),)),
            new Container(
              child: Text("User",style: new TextStyle(fontSize: 15),)),
            new Container(
              padding: const EdgeInsets.only(bottom:30.0),
              alignment: Alignment.center,
              child: TextField(),
            ),
            new Container(
              child: Text("Password",style: new TextStyle(fontSize: 15),)),
            new Container(
              padding: const EdgeInsets.only(bottom:30.0),
              alignment: Alignment.center,
              child: TextField(),
            ),
            new Container(
              child: RaisedButton(child: Text("Ingresar"),
                onPressed: (){},
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.blue[50],
              ),
            ),
            new Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text("Registrarse",style: new TextStyle(fontSize: 15),)),
          ],
        ),
      )),
    );
  }
}

// Image.asset('assets/images/login.jpg',
