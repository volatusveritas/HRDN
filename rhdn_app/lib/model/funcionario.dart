class Funcionario{
    String  nome;
    String telefone;
    String cpf;
    String pemail;
    String nascimento;
    String enderco ;
    String  cargo ;
    double salario;
    String  bemail;
    String  contratacao;

    Funcionario(this.nome, this.cpf, this.telefone, this.pemail, this.nascimento, this.enderco, this.cargo, this.salario, this.bemail, this.contratacao);

    Funcionario.fromJson(Map<String, dynamic> json)
    :    nome = json["nome"],
     telefone = json["telefone"],
     cpf = json["cpf"],
     pemail = json["pemail"],
     nascimento = json["nascimento"],
     enderco  = json["enderco"],
      cargo  = json["cargo"],
     salario = json["salario"],
      bemail = json["bemail"],
      contratacao = json["contratacao"];



    Map<String , dynamic> toJson(){
    return{
       "nome": nome,
    "telefone": telefone,
    "cpf": cpf,
    "pemail": pemail ,
    "nascimento": nascimento,
    "enderco":enderco , 
    "cargo": cargo ,
    "salario": salario,
    "bemail": bemail,
    "contratacao": contratacao,

    };
  }
}