import 'package:flutter/material.dart';


class Administrador  extends StatelessWidget{
  static String tag = 'admin-istrador';

  @override
  Widget build(BuildContext context) {
    final administrador = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/admin.jpg'),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Admin'
      ),
    );
    final inspiration = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'If your actions inspire others to dream more, learn more, do more and become more, you are a leader.'
      ),
    );
    final body  = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.green,
          Colors.lightGreen,
        ]),
      ),
      child: Column(children: <Widget>[administrador,welcome,inspiration],),
    );
    return Scaffold(
      body: body,
    );
  }
}