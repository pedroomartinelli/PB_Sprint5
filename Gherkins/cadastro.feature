#language: pt

@regression
@user_register
Funcionalidade: Cadastro de usuário
  COMO usuário do ecommerce AdvantageOnlineShopping
  QUERO poder realizar um cadastro 
  PARA logar na minha conta

Contexto: 
    Dado que esteja na página de cadastro

Esquema do Cenário: Cadastro de usuário completo
    Quando realizar o cadastro informando os campos "<username>" "<password>" "<confirmation_password>" e "<email>" 
    E a checkbox dos Termos de Uso estiver "<checked>"
    Então o botão REGISTER será "<tipo>"
    Exemplos:
    |username    |password      |confirmation_password|email          |checked|tipo    |
    |teste       |Teste123      |Teste123             |teste@teste.com|true   |abled   |
    |tst         |Teste123      |Teste123             |teste@teste.com|true   |disabled|
    |teste       |12            |12                   |teste@teste.com|true   |disabled|
    |teste       |Teste123      |Teste000             |teste@teste.com|true   |disabled|
    |teste       |Teste123      |Teste123             |teste@teste    |true   |disabled|
    |teste       |Teste123      |Teste123             |teste@teste.com|false  |disabled|
    |            |Teste123      |Teste123             |teste@teste.com|true   |disabled|
    |teste       |              |Teste123             |teste@teste.com|true   |disabled|
    |teste       |Teste123      |                     |teste@teste.com|true   |disabled|
    |teste       |Teste123      |Teste123             |               |true   |disabled|
    |            |              |                     |               |true   |disabled|