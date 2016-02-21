#language: pt

Funcionalidade: Busca post inexistente

Cenario: Realizar a busca de posts inexistente

	Dado que eu acesse o endpoint /posts
  Quando eu bater nesse endpoint com um id inexistente (/id)
  Então irá me retornar o erro Not Found 404
