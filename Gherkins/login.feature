Funcionalidade: Login convencional
  COMO usuário do ecommerce AdvantageOnlineShopping
  QUERO poder fazer login no site 
  PARA que eu possa acessar minha conta e fazer compras

Contexto:
    Dado que o modal de login esteja aberto

Esquema do Cenário: validar a autenticação do usuário
    Quando realizar login "<tipo>"
    Então mensagem deve ser exibida "<msg>"
    Exemplos:
    |tipo||msg| 
    |válido||| 
    |inválido||Incorrect user name or password.| 
    |user obrigatório||Username field is required.| 
    |senha obrigatória||Password field is required.| 
