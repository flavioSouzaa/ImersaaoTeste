#language: pt

Funcionalidade: Cadastro Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efetuar compras 

@Cadastro_datafile
Cenario: Cadastrar cliente com dados validos de arquivos externo
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email 'padrão'
E preencho os campos do formulário com dados válidos padrão
Quando confirmo o cadastro
Então deve ser direcionado a pagina de minha conta
