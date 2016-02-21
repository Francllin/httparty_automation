#language: pt

Funcionalidade: Alteração de post

Cenario: Alterar o título de um post passando o id

  Dado que eu acesse o endpoint /posts/10
  Quando eu passar o id 10 alterando o título no verbo PUT
  Então deverá alterar com sucesso, trazendo status 200 (OK)
