import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:planes_app/preferencias_usuario/preferencias_usuario.dart';

class UserProvider {
  final String _firebaseToken = 'AIzaSyAnmPU-ZGS9xTMORCL42Jyk0ZLHAAdb6_E';
  final _prefs = new PreferenciasUsuario();

  Future<Map<String, dynamic>> login(String email, String password) async {
    final authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true
    };
    final resp = await http.post(
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$_firebaseToken',
        body: json.encode(authData));
    Map<String, dynamic> decodedResp = json.decode(resp.body);
    if (decodedResp.containsKey('idToken')) {
      _prefs.token=decodedResp['idToken'];
      return {'ok': true, 'token': decodedResp['idToken']};
    } else {
      return {'ok': false, 'mensaje': decodedResp['error']['menssage']};
    }
  }

  Future nuevoUsuario(String email, String password, BuildContext context) async {
    final authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true
    };
    final resp = await http.post(
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_firebaseToken',
        body: json.encode(authData));

    Map<String, dynamic> decodedResp = json.decode(resp.body);
    if (decodedResp.containsKey('idToken')) {
      _prefs.token=decodedResp['idToken'];
      Navigator.pushReplacementNamed(context, 'app');
      return {'ok': true, 'token': decodedResp['idToken']};
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('El usuario ya se esta usando o su contraseña invalidad'),
            );
          });
      return {'ok': false, 'mensaje': decodedResp['error']['menssage']};
    }
  }
}
