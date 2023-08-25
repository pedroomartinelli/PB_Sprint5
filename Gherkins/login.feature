Funcionalidade: Login convencional
  COMO usuário do ecommerce AdvantageOnlineShopping
  QUERO poder fazer login no site 
  PARA que eu possa acessar minha conta e fazer compras

Contexto:
    Dado que o modal de login esteja aberto

Esquema do Cenário: validar a autenticação do usuário
    Quando realizar login informando os campos "<username>" e "<password>"
    E a validação ser "<tipo>"
    Então mensagem deve ser exibida "<msg>"
    Exemplos:
    |username    |password      |tipo       |msg                             |
    |teste       |Teste123      |válido     |                                |
    |teste_errado|Testeerrado123|inválido   |Incorrect user name or password.|
    |            |Teste123      |obrigatório|Username field is required.     |
    |teste       |              |obrigatório|Password field is required.     |

    
