import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';
import './ScrollableMenu.dart';

void main() => runApp(Pacients());

class Pacients extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile List",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
  
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.blue));
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          indicator: UnderlineTabIndicator(
            insets: EdgeInsets.symmetric(horizontal: 16.0)
          ),
          controller: controller,
          unselectedLabelColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.person_add),),
            Tab(icon: Icon(Icons.notifications),),
            Tab(icon: Icon(Icons.clear_all),),
          ],
        ),
      ),
      body: TabBarView(
        controller:  controller,
        children: <Widget>[
          HomePage(),
          new ScrollableMenu("Pacientes", "Admin"),
          HomePage(),
          HomePage(),
        ],
      ),
    );
  }
  
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: InkWell(
            onTap: (){},           //Here comes the new screen we wanna display
            child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 55.0,
                        height: 55.0,
                        color: Colors.blue,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.blue,
                          backgroundImage: NetworkImage("https://www.google.com/search?rlz=1C1SQJL_esCO832CO832&tbm=isch&q=avatar&chips=q:avatar,g_1:character:Dals_p81SKg%3D&usg=AI4_-kSf7BhTlONMGOl1-y4ueQxdCWtX3A&sa=X&ved=0ahUKEwjT-JmjtdLiAhWxuVkKHf9SAlEQ4lYIPigK&biw=1536&bih=722&dpr=1.25#imgrc=oWaAX72UAqGfDM:"),
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("names", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold)),
                          Text("EPS", style: TextStyle(color: Colors.grey)),
                          Text("Enfermedad", style: TextStyle(color: Colors.grey))
                        ],
                      )
                    ],
                  ),
                  Container(   //Can be deleted
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: FlatButton(
                      onPressed: () {},
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text("Edit", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ),
        ),
      ),
    );
  }
  
}