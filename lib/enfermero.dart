import 'package:flutter/material.dart';


class Enfermero  extends StatelessWidget{
  static String tag = 'enfer-mero';

  @override
  Widget build(BuildContext context) {
    final enfermero = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/nurse.jpg'),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Nurse'
      ),
    );
    final inspiration = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'The trained nurse has become one of the great blessings of humanity, taking a place beside the physician and the priest..'
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
      child:       
         Column(children: <Widget>[enfermero,welcome,inspiration],),
      
    );
    return Scaffold(
      body: body,
    );
  }
}