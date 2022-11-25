import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model/funcionario.dart';

class HttpHelper{
  final String dominio = "00kqe.mocklab.io";
  final String caminho = "funcionarios";
  final String endpointPost ="addfunc";

  Future<List<Funcionario>> getListaFuncionario() async {
 // Lista de pizzas
    final List<Funcionario> funcionarios = [];

    Uri url = Uri.https(dominio, caminho);
    http.Response result = await http.get(url);

 // Se o acesso ao web service for bem-sucedido.
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(utf8.decode(result.bodyBytes));
 // Adicionar cada pizza retirada do arquivo json
      for (var response in jsonResponse) {
        var funcionario = Funcionario.fromJson(response);
        funcionarios.add(funcionario);
      }
    }
    return funcionarios;
  }


  Future<String> postFuncionario(Funcionario func) async {
      String post = json.encode(func.toJson());
      Uri url = Uri.https(dominio, endpointPost);
      http.Response r = await http.post(
     url, body: post
    );
    return r.body;
  }

}

