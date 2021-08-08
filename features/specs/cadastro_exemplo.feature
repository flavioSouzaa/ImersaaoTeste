#language: pt

@regressivo 
Funcionalidade: Cadastro Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efetuar compras 

@cadastro_exemplos
Esquema do Cenario: Cadastrar cliente com dados validos 
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email <email>
E preencho os campos do formulário com <gender>, <first_name>, <last_name>, <password>, <day>, <month>, <year>,<newsletter>, <company>, <address>, <city>, <state>, <zipcode>, <mobilephone>, <address_name> 
Quando confirmo o cadastro
Então deve ser direcionado a pagina de minha conta
Exemplos:
| email                | gender | first_name | last_name | password   | day  | month   | year   | newsletter | company  | address | city       | state      | zipcode | mobilephone | address_name |
| 'joaos_ne@1guts.com' | 'fem'  | 'Joao'     | 'Silva'   | '12345678' | '10' | 'March' | '1980' | 'no'       | 'ABCNow' | 'Rua x' | 'New York' | 'New York' | '55555' | '5559135'   | 'Casa'       |
| 'marias_n1@1guts.com'| 'fem'  | 'Maria'    | 'Souza'   | '12345678' | '15' | 'April' | '1993' | 'yes'      | 'Topten' | 'Rua X' | 'New York' | 'New York' | '12345' | '9998362'   | 'Trabalho'   |

