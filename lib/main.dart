import 'package:flutter/material.dart';
import 'package:higia/login_page.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  final routes =<String,WidgetBuilder>{
    LoginPage.tag: (context) =>LoginPage(),
    HomePage.tag: (context) =>HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Hospital',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
      routes: routes,
      );
  }
}