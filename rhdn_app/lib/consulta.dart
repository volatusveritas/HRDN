import 'dart:js_util';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'httphelper.dart';
import 'model/funcionario.dart';
import 'localStore.dart';

class Consulta extends StatefulWidget {
  const Consulta({super.key});

  @override
  State<Consulta> createState() => _ConsultaState();
}

class _ConsultaState extends State<Consulta> {
 final HttpHelper helper = HttpHelper();
 final LocalStorage localStorage = LocalStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Consultas")),
      body: FutureBuilder(
        future: helper.getListaFuncionario(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // Aqui se já terminou de processar o Future
            
            return _mostrarListaFuncionarios(context, snapshot.data!);
          } else {
            
            // Aqui se não terminou ainda
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView _mostrarListaFuncionarios(BuildContext context,List<Funcionario> localStorage){
    
    List<Widget> listTiles = [];
    
    for(Funcionario func in localStorage){
      listTiles.add(
        ListTile(
          title: Text(func.nome),
          subtitle: Text(
            "${func.cargo}, ${func.bemail}, ${func.salario.toStringAsFixed(2)}  " ),
        )
      );
    }
    return ListView(children:  listTiles,
    );

      }
  
}
