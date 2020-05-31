import 'package:flutter/material.dart';

import '../pages/converter_page.dart';
import '../Utilities/ui_colors.dart';


class tab_tool extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Công cụ chuyển đổi",
      //debugShowCheckedModeBanner: false,

      //routes: {
       // 'Converter' : (context) => ConversionPage(),
      //},
      //theme: ThemeData(
        //  brightness: Brightness.light,
        //  accentColor: darkBackgroundColor,
        //  primaryColor: darkButtonColor
      //),
      home: new ConversionPage(),
    );
  }
}