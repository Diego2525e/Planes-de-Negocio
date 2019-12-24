import 'package:flutter/material.dart';
import 'package:planes_app/pages/home.dart';
import 'package:planes_app/pages/profile.dart';
import 'package:planes_app/pages/search.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TutorMe', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.grey[200],
      ),
      body: Center(child: _callPage(_selectedIndex)
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

Widget _callPage(int paginaActual) {
  switch (paginaActual) {
    case 0:
      return Home();
    case 1:
      return Search();
    case 2:
      return Profile();
  }
}
