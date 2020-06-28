# frozen_string_literal: true

Dado('que inseri itens do ecommerce no meu carrinho') do
  compras_page.load
  compras_page.add_from_home_page
  compras_page.add_from_search
  compras_page.add_from_category
  compras_page.checkout
end

Quando('realizar o meu cadastro') do
  cadastro_page.register
  cadastro_page.validate_register
end

Quando('finalizar o pagamento') do
  entrega_page.confirm_shipping
  pagamento_page.payment_check
end

Então('meu pedido deve ser concluído com sucesso.') do
  pagamento_page.validate_order
end
