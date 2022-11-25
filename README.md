## Getting Started

Instalar o `GIT bash`

Fazer o clone do projeto

Para o projeto rodar você precisa do `NodeJs`, é fácil instala-lo, só seguir as instruções padrões do onde, logo depois disso, na pasta HRDN onde o APP se encontra, necessariamente você precisa rodar os seguintes comandos do node:

```npm install -g sails```

```npm install sails-mysql```

```npm install```

Agora, para fazer a conexão com o BD, você precisa instalar o `MySQL` Server, configurar com seu login e senha diretamente na instalação e por fim para fazer a conexão, você precisar criar um Schema/Banco de dados chamado “hrdn”, depois disso, é só configurar o arquivo database.js com seu login e senha do `MySQL`.

Para criação do schema, você precisa entrar em modo terminal com o `MySQL` Server, tendo também a opção de entrar digitando o comando:

```mysql -u[login] -p[senha]```

Ao entrar no modo terminal do `MySQL`, você precisa digitar a query:


```
CREATE DATABASE hrdn;
```
Ou
```
CREATE SCHEMA hrdn;
```

Para rodar finalmente, você basta abrir um terminal na pasta hrdn e digite o comando:

```
sails lift
```

Caso de erro no seu `sails`, tente o comando:

```
node app.js
```

Ele vai rodar, ao rodar você precisa entrar na Home, em qualquer navegador é só digitar:

`localhost:1337` : home
