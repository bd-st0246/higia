import 'package:flutter/material.dart';
import './infoPage.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';
import 'Formulario.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:higia/ScrollableMenu.dart';

class levelAccess {
  final String access;

  levelAccess(this.access);
}

class ScrollableMenu extends StatefulWidget {
  static const tag = 'scrollable-menu';
  _ScrollableMenu createState() => _ScrollableMenu();
}

class _ScrollableMenu extends State<ScrollableMenu>{

  var _elements;
  String _user;

  int getItems() {

    //Searches in the table an returns the number of elements to show in the ListView.

    return 2;
  }

  Widget adminOption (){
    if(_user == "AVANZADO"){
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Formulario.tag);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
      );
    }
    else{
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    TabController controller;
    final levelAccess args = ModalRoute.of(context).settings.arguments;
    this._user = args.access;
    return Scaffold(
      floatingActionButton: adminOption(),
      appBar: AppBar(
        title: Text('Pacientes'),
      ),
      body: Column(
        children: <Widget>[
          ListView.builder(
            itemCount: getItems(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) => Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: InkWell(
                onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => new infoPage()));},           //Here comes the new screen we wanna display
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
                                Text("Documento", style: TextStyle(color: Colors.grey)),
                                Text("EPS", style: TextStyle(color: Colors.grey)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }

}