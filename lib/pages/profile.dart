import 'package:flutter/material.dart';
import 'package:planes_app/share/btnNavigatorBar.dart';
 
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Center(
          child: Container(
            child: Text('Profile'),
          ),
        ),
        bottomNavigationBar: navigatorBarShare(2,context),
      ),
    );
  }
}