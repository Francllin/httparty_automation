#language: pt

Funcionalidade: Busca post existente

Cenario: Realizar a busca de posts existentes

	Dado que eu acesse o endpoint /posts
  Quando eu bater no endpoint com um id
  Então irá me trazer o corpo da request
