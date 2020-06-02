import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math/screens/plane_geometry.dart';
import '../screens/algebra.dart';
import '../screens/differential_derivative.dart';
import '../screens/integral.dart';
import '../screens/matrix.dart';
import '../screens/analytic_geometry.dart';
import '../screens/probability_statistics.dart';
import '../screens/plane_geometry.dart';
import '../screens/trigonometric.dart';



class tab_formula extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Công thức Toán Free',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/daiso': (BuildContext context) => algebra(),
        '/hinhphang': (BuildContext context) => plane_geometry(),
        '/hinhgiaitich': (BuildContext context) =>analytic_geometry(),
        '/luonggiac': (BuildContext context) => trigonometric(),
        '/viphan': (BuildContext context) => differential_derivative(),
        '/tichphan': (BuildContext context) => integral(),
        '/matran': (BuildContext context) => matrix(),
        '/xstk': (BuildContext context) => probability_statistics(),
      },

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/////////////////////////////////////////
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Trang chủ'),
          actions: <Widget>[

          ],
        ),
        body: Container(
            child: ListView(
              padding: const EdgeInsets.all(3.0),
              children: <Widget>[
                FlatButton(
                    padding: const EdgeInsets.all(8),
                    child: new Stack(
                      children: <Widget>[
                        new Image.asset(
                          "images/sr1.PNG",
                          fit: BoxFit.fill,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: 120.0, bottom: 0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                          ),
                          child: Text(
                            'Đại số',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/daiso');
                    }
                  //color: Colors.teal[700],
                ),
                FlatButton(
                    padding: const EdgeInsets.all(8),
                    child: new Stack(
                      children: <Widget>[
                        new Image.asset(
                          "images/sr2.PNG",
                          fit: BoxFit.fill,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: 120.0, bottom: 0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                          ),
                          child: Text(
                            'Hình học',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/hinhphang');
                    }
                  //color: Colors.teal[700],
                ),
                FlatButton(
                    padding: const EdgeInsets.all(8),
                    child: new Stack(
                      children: <Widget>[
                        new Image.asset(
                          "images/sr3.PNG",
                          fit: BoxFit.fill,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: 120.0, bottom: 0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                          ),
                          child: Text(
                            'Hình học giải tích',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/hinhgiaitich');
                    }
                  //color: Colors.teal[700],
                ),
                FlatButton(
                    padding: const EdgeInsets.all(8),
                    child: new Stack(
                      children: <Widget>[
                        new Image.asset(
                          "images/sr4.PNG",
                          fit: BoxFit.fill,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: 120.0, bottom: 0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                          ),
                          child: Text(
                            'Lượng giác',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/luonggiac');
                    }
                  //color: Colors.teal[700],
                ),
                FlatButton(
                    padding: const EdgeInsets.all(8),
                    child: new Stack(
                      children: <Widget>[
                        new Image.asset(
                          "images/sr5.PNG",
                          fit: BoxFit.fill,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: 120.0, bottom: 0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                          ),
                          child: Text(
                            'Ma trận',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/matran');
                    }
                  //color: Colors.teal[700],
                ),
                FlatButton(
                    padding: const EdgeInsets.all(8),
                    child: new Stack(
                      children: <Widget>[
                        new Image.asset(
                          "images/sr6.PNG",
                          fit: BoxFit.fill,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: 120.0, bottom: 0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                          ),
                          child: Text(
                            'Vi phân',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/viphan');
                    }
                  //color: Colors.teal[700],
                ),
                FlatButton(
                    padding: const EdgeInsets.all(8),
                    child: new Stack(
                      children: <Widget>[
                        new Image.asset(
                          "images/sr7.PNG",
                          fit: BoxFit.fill,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: 120.0, bottom: 0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                          ),
                          child: Text(
                            'Tích phân',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/tichphan');
                    }
                  //color: Colors.teal[700],
                ),
                FlatButton(
                    padding: const EdgeInsets.all(8),
                    child: new Stack(
                      children: <Widget>[
                        new Image.asset(
                          "images/sr8.PNG",
                          fit: BoxFit.fill,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              left: 0, right: 0, top: 120.0, bottom: 0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black45,
                          ),
                          child: Text(
                            'Xác suất thống kê',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/xstk');
                    }
                  //color: Colors.teal[700],
                ),
              ],
            )
        )
    );
  }
}


