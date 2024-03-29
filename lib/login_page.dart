
import 'package:flutter/material.dart';
import 'ScrollableMenu.dart';
import 'Connection.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
final _formKey = GlobalKey<FormState>();
final userValue = new TextEditingController();
final passwordValue = new TextEditingController();
  @override

  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/hospital.png'),
      ),
    );

    final username = TextFormField(
      controller: userValue,
      validator: (value){
        if (value.isEmpty){
          return 'Usuario no puede estar en blaco';
        }
      },
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Usuario',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final password = TextFormField(
      controller: passwordValue,
      validator: (value){
        if (value.isEmpty){
          return 'Contraseña no puede estar en blanco';
        }
      },
      autofocus: false,    
      obscureText: true,  
      decoration: InputDecoration(
        hintText: 'Contraseña',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );  
    Widget _buildLoginButton(BuildContext context){
      return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 0.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)
          ),
          onPressed: () {
            print("se preciono");
            if (Connection.login(userValue.text, passwordValue.text) != '') {
              print("se consulto");
              Navigator.pushNamed(context, ScrollableMenu.tag,
                  arguments: levelAccess("AVANZADO"));
            }
          },
          color: Colors.lightBlueAccent,

          child: Text('Entrar', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Builder(
        builder: (context) => Center(
          child: Form(
            key: _formKey,
        child:ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            username,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            _buildLoginButton(context),
          ],
        ), )),
      ),
    );
  }
}
