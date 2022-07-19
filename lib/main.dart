import 'package:essientials_app/screen/homepage.dart';
import 'package:essientials_app/screen/htttpser.dart';
import 'package:essientials_app/screen/image.dart';
import 'package:essientials_app/screen/rowCol.dart';
import 'package:flutter/material.dart';

void main() {
  // widgetapp
  // material app
  // cupertino app

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      // home: RowCol(),
      // home: ImageWidgets(),
      home: HttpSever(),

      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}
