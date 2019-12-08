import 'package:flutter/material.dart';

class ProfileEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: SingleChildScrollView(
                    child: Column(
      children: <Widget>[
        Container(
          child: Text(
            'Perfil',
            style: TextStyle(fontSize: 25),
          ),
        ),
        CircleAvatar(
          minRadius: 30,
          maxRadius: 90,
        ),
        Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(labelText: 'Nombre'),
            )),
        Container(
            padding: EdgeInsets.all(10.0),
            child: 
                TextField(
                  decoration: InputDecoration(labelText: 'Apellido'),
                ),
            ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(labelText: 'Correo'),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(labelText: 'Cedula'),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(labelText: 'Celular'),
          ),
        ),
        ButtonTheme(
          minWidth: 250.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Text("Actualizar"),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            splashColor: Colors.blue[50],
          ),
        ),
      ],
    )))));
  }
}
