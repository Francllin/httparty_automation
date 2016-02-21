#language: pt

Funcionalidade: Deleção de post inexistente

Cenario: Deletar um post passando um id inexistente

  Dado que eu acesse o endpoint /posts
  Quando eu passar um id inexistente no verbo DELETE
  Então deverá retornar 404 (Not Found)
