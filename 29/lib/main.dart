import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math/tab_screens/tab_formula.dart';
import 'package:math/tab_screens/tab_tips.dart';
import 'package:math/tab_screens/tab_tool.dart';
import 'package:math/tab_screens/tab_you_know.dart';
import './tab_screens/tab_you_know.dart';
import './tab_screens/tab_tips.dart';
import './tab_screens/tab_tool.dart';

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => new _MainAppState();

}

class _MainAppState extends State<MainApp> {
  int i = 0;
  var pages = [
    new tab_formula(),
    new tab_tool(),
    new tab_tips(),
    new tab_you_know()
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
         body: pages[i],

        bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Colors.lightBlue,
          selectedItemColor: Colors.white ,
          unselectedItemColor: Colors.black54 ,
          items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Công thức'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.developer_board),
            title: new Text('Công cụ'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.help_outline),
            title: new Text('Mẹo'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.lightbulb_outline),
            title: new Text('Bạn có biết'),
          ),
        ],
        currentIndex: i,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
      ),
    )
    );
  }
}