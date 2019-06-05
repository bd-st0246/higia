import 'package:flutter/material.dart';
import 'package:higia/administrador.dart';
import 'package:higia/login_page.dart';
import 'administrador.dart';
import 'home_page.dart';
import 'enfermero.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  final routes =<String,WidgetBuilder>{
    LoginPage.tag: (context) =>LoginPage(),
    HomePage.tag: (context) =>HomePage(),
    Administrador.tag: (context) =>Administrador(),
    Enfermero.tag: (context) => Enfermero(),
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
      home:LoginPage(),
      routes: routes,
      );
  }
}