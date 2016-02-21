#language: pt

Funcionalidade: Deleção de post existente

Cenario: Deletar um post passando um id existente

  Dado que eu acesse o endpoint /posts/idexistente
  Quando eu passar um id existente no verbo DELETE
  Então o post será deletado com sucesso
