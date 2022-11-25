import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/funcionario.dart';



class LocalStorage {
  
final List<Funcionario> func = [];



 LocalStorage(){
  // salvarInfo(new Funcionario("Rogerio Brito", "Brito", "Brito", "Brito", "Brito", "Brito", "Britu", 12, "Brito", "Brito"));
 }

 Future<List<Funcionario>> carregarInfo() async {
  final  prefs = await SharedPreferences.getInstance();
  
  return  json.decode(prefs.getString("funcionarios")?? json.encode([])) as List<Funcionario>;

}

 Future salvarInfo(Funcionario value) async{

     SharedPreferences prefs = await SharedPreferences.getInstance();
        
     func.add(value) ;

     prefs.setString("funcionarios", json.encode(func));
  }
  
  
}