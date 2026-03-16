# Topup API

API backend desenvolvida em Ruby on Rails para simular um sistema de recarga (top-up).
A aplicação permite registrar e consultar recargas, servindo como exemplo de construção de uma API REST utilizando boas práticas de desenvolvimento backend.

## Tecnologias utilizadas

* Ruby
* Ruby on Rails
* SQLite / PostgreSQL
* REST API
* JSON
* Git

## Funcionalidades

* Criar uma nova recarga
* Listar recargas
* Consultar uma recarga específica
* Validação de dados
* Estrutura de API REST

## Estrutura do projeto

O projeto segue a arquitetura padrão do Ruby on Rails:

* **Models** – representam os dados da aplicação
* **Controllers** – recebem as requisições e retornam respostas JSON
* **Routes** – definem os endpoints da API
* **Migrations** – definem a estrutura do banco de dados

## Como executar o projeto

Clone o repositório:

```
git clone https://github.com/MarcioMBDS/topup_api.git
```

Entre na pasta do projeto:

```
cd topup_api
```

Instale as dependências:

```
bundle install
```

Crie o banco de dados:

```
rails db:create
rails db:migrate
```

Inicie o servidor:

```
rails server
```

A API estará disponível em:

```
http://localhost:3000
```

## Exemplos de endpoints

### Criar uma recarga

POST /topups

Exemplo de body:

```
{
  "phone": "21999999999",
  "amount": 50
}
```

### Listar recargas

GET /topups

### Buscar recarga por ID

GET /topups/:id

## Objetivo do projeto

Este projeto foi desenvolvido como prática de desenvolvimento backend com Ruby on Rails, com foco na construção de APIs REST, organização de código e manipulação de dados em banco relacional.

## Autor

Márcio Moraes

GitHub:
https://github.com/MarcioMBDS
