import 'package:flutter/material.dart';
import 'package:planes_app/pages/profileWidget.dart';
import 'package:planes_app/pages/searchWidget.dart';

import 'homeWidget.dart';

class App extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: AppState(),
    );
  }
}

class AppState extends StatefulWidget {
  AppState({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<AppState> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    home(),
    search(),
    profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inicio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Busqueda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
