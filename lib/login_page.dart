
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:mysql1/mysql1.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
final _formKey = GlobalKey<FormState>();
final userValue = new TextEditingController();
final passwordValue = new TextEditingController();
bool acceso= false;
final conn = await MySqlConnection.connect(new ConnectionSettings(
host: '192.168.137.1', port: 3306, user: 'root', db: 'testdb'));

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

    final email = TextFormField(
      controller: userValue,
      validator: (value){
        if (value.isEmpty){
          return 'try again';
        }else if (value.contains('doctor')||value.contains('doctora')){
          acceso= true;
        }else if(value.contains('enfermero')|| value.contains('enfermera')){
          acceso=true;
        }else if(value.contains('administrador') || value.contains('administradora')) {
           acceso=true;
        }else {
          return 'wrong id';
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
          return 'try again';
        } else if (value.length < 4){
          return 'Error';
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
        shadowColor: Colors.lightBlueAccent,
        elevation: 0.2,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)
          ),
          onPressed: () { 
            //fetchPost(userValue,passwordValue); 
            if (_formKey.currentState.validate()) {     
            Navigator.of(context).pushNamed(HomePage.tag);
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
            email,
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
