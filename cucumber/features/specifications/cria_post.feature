#language: pt

Funcionalidade: Criação de um novo post

Cenario: Criar um novo post passando os parametros necessários

  Dado que eu acesse o endpoint /posts
  Quando eu passar os parametros necessários com o verbo POST
  Então o post será criado com sucesso
