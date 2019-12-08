import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        Container(
          padding:
              EdgeInsets.only(top: 20.0, bottom: 10.0, left: 10.0, right: 10.0),
          child: Text(
            'Perfil',
            style: TextStyle(fontSize: 25),
          ),
        ),
        Divider(),
        CircleAvatar(
          // backgroundImage: ExactAssetImage('assets/user.jpg'),
          minRadius: 30,
          maxRadius: 90,
        ),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Nombre: '),
                Text('Diego'),
              ],
            )),
        Divider(),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Apellido: '),
                Text('Portero'),
              ],
            )),
        Divider(),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Correo: '),
                Text('diego.portero@epn.edu.ec'),
              ],
            )),
        Divider(),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Cedula: '),
              Text('1723964308'),
            ],
          ),
        ),
        Divider(),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('Celular: '),
                Text('0999261556'),
              ],
            )),
        Divider(),
        ButtonTheme(
          minWidth: 250.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Text("Editar"),
            onPressed: () {},
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            splashColor: Colors.blue[50],
          ),
        ),
        ButtonTheme(
          minWidth: 250.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Text("Cerrar Sesion"),
            onPressed: () {},
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            splashColor: Colors.blue[50],
          ),
        ),
      ],
    )));
  }
}
