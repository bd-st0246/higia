import 'package:flutter/material.dart';

class infoPage extends StatefulWidget {

  _infoPage createState() => _infoPage();

}

class _infoPage extends State<infoPage>{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Paciente"),
        centerTitle: true,
        actions: <Widget>[
          //IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
          IconButton(icon: Icon(Icons.people), onPressed: null),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            width: 100.0,
            height: 100.0,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.blue,
              backgroundImage: NetworkImage(""),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            width: 70.0,

            child: Text("Name: ",style: TextStyle(fontSize: 10.0),),
          ),
        ],
      ),
    );
  }

}