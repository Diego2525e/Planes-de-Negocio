import 'package:flutter/material.dart';

BottomNavigationBar navigatorBarShare(int index,BuildContext context) {
  return BottomNavigationBar(
    currentIndex: index,
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
    onTap: (indexPage){
      switch(indexPage){
        case 0:
          {
            // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen()));
            Navigator.pushReplacementNamed(context, 'home');
          }
        break;
        case 1:
          {
            Navigator.pushReplacementNamed(context, 'search');
          }
        break;
        case 2:
          {
            Navigator.pushReplacementNamed(context, 'profile');
          }
        break;

      }
    },
  );
}
