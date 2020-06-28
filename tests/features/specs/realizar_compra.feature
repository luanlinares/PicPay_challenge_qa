#language: pt

Funcionalidade: Realizar uma compra no ecommerce
Eu como usuário, quero me cadastrar no ecommerce para realizar uma compra de roupas com sucesso

Contexto: Inserir itens no carrinho de compras
Dado que inseri itens do ecommerce no meu carrinho

@compra
Cenario: Realizar uma compra com sucesso
Quando realizar o meu cadastro
E finalizar o pagamento
Então meu pedido deve ser concluído com sucesso. 