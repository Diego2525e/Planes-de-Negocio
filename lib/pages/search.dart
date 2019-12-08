import 'package:flutter/material.dart';
import 'package:planes_app/share/btnNavigatorBar.dart';
 
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Search'),
        ),
        body: Center(
          child: Container(
            child: Text('Search'),
          ),
        ),
        bottomNavigationBar: navigatorBarShare(1,context),
      ),
    );
  }
}