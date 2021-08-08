#language: pt

Funcionalidade: Cadastrar cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efetuar compras

@cadastro_dados_fixos
Cenario: Cadastrar cliente com dados validos fixos
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email 'teste20@teste.com.br'
E preencho os campos do formulario com dado validos fixos
Quando confirmo o cadastro
Entao deve ser direcionado a pagina de minha conta