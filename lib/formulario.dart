import 'package:flutter/material.dart';

class Formulario extends StatelessWidget{
  static String tag = 'formular-io';
  
  final _formKey = GlobalKey<FormState>();
  final ide= new TextEditingController();
  final name= new TextEditingController();
  final apellid= new TextEditingController();
  final nacimient= new TextEditingController();
  final direccio= new TextEditingController();
  final nume= new TextEditingController();
  final gener= new TextEditingController();
  final estad= new TextEditingController();
  final ocupaci= new TextEditingController();
  final regim= new TextEditingController();
  final ep= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final logo= Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 38.0,
        child: Image.asset('assets/hospital.png'),
      ),
    );
    final id = TextFormField(
      controller: ide,
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
        hintText:'Documento',
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final nombre = TextFormField(
      controller: name,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText:'Nombre',
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final apellidos = TextFormField(
      controller: apellid,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText:'Apellidos',
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
  final nacimiento = TextFormField(
      controller: nacimient,
      keyboardType: TextInputType.datetime,
      autofocus: false,
      decoration: InputDecoration(
        hintText:'Fecha Nacimiento',
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final direccion = TextFormField(
      controller: direccio,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText:'Direccion',
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final numero = TextFormField(
      controller: nume,
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
        hintText:'Numero de contacto',
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final genero = TextFormField(
      controller: gener,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText:'Genero',
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final estado = TextFormField(
      controller: estad,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText:'Estado Civil',
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final ocupacion = TextFormField(
      controller: ocupaci,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText:'Ocupacion',
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final regimen = TextFormField(
      controller: regim,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText:'Regimen',
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final eps = TextFormField(
      controller: ep,
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText:'EPS',
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(28.0)),
      ),
    );
    final addLabel= RaisedButton(
      child: Text('save',
    ),
    onPressed: () {},
    );
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Builder(
        builder: (context) =>Center(
          child: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 15.0,right: 15.0),
              children: <Widget>[
                logo,
                SizedBox(height: 20.0),
                id,
                SizedBox(height: 6.0),
                nombre,
                SizedBox(height: 6.0),
                apellidos,
                SizedBox(height: 6.0),
                nacimiento,
                SizedBox(height: 6.0),
                direccion,
                SizedBox(height: 6.0),
                numero,
                SizedBox(height: 6.0),
                genero,
                SizedBox(height: 6.0),
                estado,
                SizedBox(height: 6.0),
                ocupacion,
                SizedBox(height: 6.0),
                regimen,
                SizedBox(height: 6.0),
                eps,
                SizedBox(height: 6.0),
                addLabel                
              ],
            ),
          )
        ), ),
      );
  }
}
