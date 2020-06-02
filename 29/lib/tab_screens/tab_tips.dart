import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tab_tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Mẹo"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        child: ListView(
          children: <Widget> [
          new Image.asset("img_data/img_meo/1.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/2.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/3.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/4.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/5.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/6.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/7.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/8.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/9.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/10.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/11.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/12.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/13.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/14.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/15.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/16.jpg"),
            new Text(""),
            new Image.asset("img_data/img_meo/17.jpg"),
        ]
        )
      )
    );
  }
}
