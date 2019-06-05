
import 'package:flutter/material.dart';
import 'home_page.dart';

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
        hintText: 'Password',
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
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () { 
            //fetchPost(userValue,passwordValue); 
            if (_formKey.currentState.validate()) {     
            Navigator.of(context).pushNamed(HomePage.tag);
            }
          },
          color: Colors.lightBlueAccent,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
    }
    final forgotLabel = FlatButton(
      child: Text('Forgot password?',
      style: TextStyle(color: Colors.black54),    
      ),
      onPressed: (){},
    );
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
            forgotLabel
          ],
        ), )),
      ),
    );
  }
}
