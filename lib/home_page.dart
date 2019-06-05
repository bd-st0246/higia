import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {

    final doctor= Hero(
      tag: 'hero',
      child: Padding(
      padding: EdgeInsets.all(16.0),
      child: CircleAvatar(
        radius: 72.0,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/doctor.jpg'),
      ),
      ),
    );

    final welcome= Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Doctor',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );
    final contgrats= Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'You have saved 30, lifes today. great job, tomorrow go and save more lifes.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child:  Column(
        children: <Widget>[doctor,welcome,contgrats],
      ),
    );
    return Scaffold(
      body: body,
    );
  }
}