import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class algebra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Đại số"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(8),
                child: new Column(
                  children: <Widget>[
                    new Text(
                      "Đang chờ dữ liệu",
                      style: TextStyle(fontSize: 25.0),
                      overflow: TextOverflow.fade,
                    ),
                    new Image.asset(
                      "img_data/img_ds/1.1.jpg",
                      fit: BoxFit.fill,
                    ),
                  ],
                ),

                //color: Colors.teal[700],
                ),
            Container(
              padding: const EdgeInsets.all(8),
              child: new Column(
                children: <Widget>[
                  new Text(
                    "",
                    style: TextStyle(fontSize: 25.0),
                    overflow: TextOverflow.fade,
                  ),
                  new Image.asset(
                    "img_data/img_ds/1.2.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),

              //color: Colors.teal[700],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: new Column(
                children: <Widget>[
                  new Text(
                    "",
                    style: TextStyle(fontSize: 25.0),
                    overflow: TextOverflow.fade,
                  ),
                  new Image.asset(
                    "img_data/img_ds/1.3.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),

              //color: Colors.teal[700],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: new Column(
                children: <Widget>[
                  new Text(
                    "",
                    style: TextStyle(fontSize: 25.0),
                    overflow: TextOverflow.fade,
                  ),
                  new Image.asset(
                    "img_data/img_ds/1.4.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),

              //color: Colors.teal[700],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: new Column(
                children: <Widget>[
                  new Text(
                    "",
                    style: TextStyle(fontSize: 25.0),
                    overflow: TextOverflow.fade,
                  ),
                  new Image.asset(
                    "img_data/img_ds/1.5.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),

              //color: Colors.teal[700],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: new Column(
                children: <Widget>[
                  new Text(
                    "",
                    style: TextStyle(fontSize: 25.0),
                    overflow: TextOverflow.fade,
                  ),
                  new Image.asset(
                    "img_data/img_ds/1.6.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),

              //color: Colors.teal[700],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: new Column(
                children: <Widget>[
                  new Text(
                    "",
                    style: TextStyle(fontSize: 25.0),
                    overflow: TextOverflow.fade,
                  ),
                  new Image.asset(
                    "img_data/img_ds/1.7.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),

              //color: Colors.teal[700],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: new Column(
                children: <Widget>[
                  new Text(
                    "",
                    style: TextStyle(fontSize: 25.0),
                    overflow: TextOverflow.fade,
                  ),
                  new Image.asset(
                    "img_data/img_ds/1.8.jpg",
                    fit: BoxFit.fill,
                  ),
                ],
              ),

              //color: Colors.teal[700],
            ),
          ],
        ),
      ),
    );
  }
}
