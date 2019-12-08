import 'package:flutter/material.dart';
import 'package:planes_app/share/btnNavigatorBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Container(
            child: Text('Home'),
          ),
        ),
        bottomNavigationBar: navigatorBarShare(0,context)
      ),
    );
  }
}
