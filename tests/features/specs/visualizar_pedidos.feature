#language: pt

Funcionalidade: Consultar meus pedidos no ecommerce
Eu como usuário, quero acessar a minha conta no ecommerce para consultar os meus pedidos. 


Contexto: login no ecommerce
Dado que realizei o login no ecommerce

@pedidos
Cenario: Visualizar os meus pedidos
Quando acessar a pagina de pedidos
Então devo visualizar a lista dos pedidos que realizei no ecommerce