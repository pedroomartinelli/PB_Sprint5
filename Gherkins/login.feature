#language: pt

@regression
@login
Funcionalidade: Login 
  COMO usuário do ecommerce AdvantageOnlineShopping
  QUERO poder fazer login no site 
  PARA que eu possa acessar minha conta e fazer compras

Contexto:
  Dado que o modal de login esteja aberto

@login_normal
Esquema do Cenário: validar a autenticação do usuário no login convencional
  Quando realizar login informando os campos "<username>" e "<password>"
  E a validação ser "<tipo>"
  Então mensagem deve ser exibida "<msg>"
  Exemplos:
    |username    |password      |tipo       |msg                             |
    |teste       |Teste123      |válido     |                                |
    |teste_errado|Testeerrado123|inválido   |Incorrect user name or password.|
    |            |Teste123      |obrigatório|Username field is required.     |
    |teste       |              |obrigatório|Password field is required.     |

@login_facebook
Cenário: validar autentificação de usuário via Facebook
  Dado que esteja com o modal de login por Facebook aberto
  Quando efetuar o login
  Então será direcionado para a página home da aplicação já logada

    
