import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rhdn_app/cadastro.dart';
import 'package:rhdn_app/consulta.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: _criarMenuDrawer(context),
      ),
      appBar: AppBar(title: Text("Home")),
      body: Column(children: [
        Center(
        child:  Text("HRDN", style: TextStyle(fontSize: 42,),),
        
        ),
        Center(
        child:   Text("Bem vindo!", style: TextStyle(fontSize: 32),),
        )
       ,
        Center(
        child:   Text("Ao seu portal de RH"),
        )
       ,
        
      ]),
    );
  }

  Widget _criarMenuDrawer(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          subtitle: Text('Minha página principal'),
        ),
        ListTile(
          leading: Icon(Icons.account_box_rounded),
          title: Text('Cadastro'),
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => Cadastro( ))))
          },
        ),
        ListTile(
          leading: Icon(Icons.assignment_rounded),
          title: Text('Consulta'),
           onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => Consulta( ))))
          },
        ),
      ],
    );
  }
}
