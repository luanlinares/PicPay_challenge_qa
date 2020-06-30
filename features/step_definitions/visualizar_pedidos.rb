# frozen_string_literal: true

Dado('que realizei o login no ecommerce') do
  pedidos_page.load
  pedidos_page.login
end

Quando('acesso a pagina de pedidos') do
  pedidos_page.access_orders_page
end

Então('devo visualizar a lista dos pedidos que realizei no ecommerce') do
  pedidos_page.orders_page_validate
end
