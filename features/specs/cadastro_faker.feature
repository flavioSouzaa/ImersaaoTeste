#language: pt

Funcionalidade: Cadastro Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efetuar compras 

@Cadastro_dados_faker
Cenario: Cadastrar cliente com dados validos aleatórios
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email 'aleatório'
E preencho os campos do formulário com dados válidos aleatórios
Quando confirmo o cadastro
Então deve ser direcionado a pagina de minha conta
