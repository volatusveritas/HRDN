import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rhdn_app/localStore.dart';
import 'httphelper.dart';
import 'model/funcionario.dart';
import 'localStore.dart';


class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final ControllerNome = TextEditingController();
  final ControllerTelefone = TextEditingController();
  final ControllerCPF = TextEditingController();
  final ControllerPEmail = TextEditingController();
  final ControllerNasc = TextEditingController();
  final ControllerEndereco = TextEditingController();
  final ControllerCargo = TextEditingController();
  final ControllerSalario = TextEditingController();
  final ControllerHiring = TextEditingController();
  final ControllerBEmail = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
      title: Text("Cadastro"),
       ),
       body: Form(child: 
       Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(controller: ControllerNome, decoration: InputDecoration(labelText: "Nome"),),
            TextFormField(controller: ControllerTelefone, decoration: InputDecoration(labelText: "Tel.:"),),
            TextFormField(controller: ControllerCPF, decoration: InputDecoration(labelText: "CPF"),),
            TextFormField(controller: ControllerPEmail, decoration: InputDecoration(labelText: "E-mail  Pessoal"),),
            TextFormField(controller: ControllerNasc, decoration: InputDecoration(labelText: "Data de Nascimento dd/mm/aaaa"),),
            TextFormField(controller: ControllerEndereco, decoration: InputDecoration(labelText: "Endereço"),),
              TextFormField(controller: ControllerCargo, decoration: InputDecoration(labelText: "Cargo"),),
            TextFormField(controller: ControllerSalario, decoration: InputDecoration(labelText: "Salario"),),
            TextFormField(controller: ControllerHiring, decoration: InputDecoration(labelText: "Data de Contratação dd/mm/aaaa"),),
            TextFormField(controller: ControllerBEmail, decoration: InputDecoration(labelText: "Email Profisional"),),
            Padding(padding: EdgeInsets.all(15),
              child: ElevatedButton(onPressed: (() =>{
                _salvarInfo()
              }) , child: Text('Cadastrar'), ),
            )
           

          ]),
       )),
    );
  }

    _salvarInfo() async{
      HttpHelper helper = HttpHelper();
      LocalStorage localStorage = LocalStorage();
    String  nome = ControllerNome.text;
    String telefone = ControllerTelefone.text;
    String cpf = ControllerCPF.text;
    String pemail = ControllerPEmail.text;
    String nascimento = ControllerNasc.text;
    String enderco  = ControllerEndereco.text;
    String  cargo  = ControllerCargo.text;
    double salario = double.parse(ControllerSalario.text);
    String  bemail = ControllerBEmail.text;
    String  contratacao = ControllerHiring.text;

    Funcionario func = Funcionario(nome, cpf, telefone, pemail, nascimento, enderco, cargo, salario, bemail, contratacao);
    String resultado = await helper.postFuncionario(func);
    
    Future ls = localStorage.salvarInfo(func);
    showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text("Salvar informações"),
          content: Text(resultado),
          actions: [
            ElevatedButton(
              onPressed: (){
              Navigator.of(context).pop();
            }, 
            child: Text("Fechar"),
            ),
          ],
        );
      });   
  }
}