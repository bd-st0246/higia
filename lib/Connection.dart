import 'package:mysql1/mysql1.dart';
import 'dart:async';

class Connection{


  static Future<String> login (String username, String password) async {
    var conn = await MySqlConnection.connect(ConnectionSettings(
        host: '192.168.137.1',
        port: 3306,
        user: 'higia2',
        password: 'abcdEFGH1234',
        db: 'hospital'));
    var resultado = await conn.query('select nivelAutorizacion from usuarios where ${username} = nombreUsuario and ${username} = contrasenna;');
    if(resultado.isEmpty)return "";
    print("Respuesta:${resultado.first[0]}:");
    return resultado.first[0];
  }
}