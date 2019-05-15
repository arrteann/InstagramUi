import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'myhome_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      home: Directionality(textDirection: TextDirection.rtl,child: MyHomePages(),),
      theme: new ThemeData(
        fontFamily: 'Vazir',
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: new TextTheme(title: TextStyle(color: Colors.black)),
      ),
    );
  }
}
