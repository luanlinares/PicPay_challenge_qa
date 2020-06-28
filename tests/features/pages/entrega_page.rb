# frozen_string_literal: true

# classe auxiliar para testes de entrega de produto
class Entrega < SitePrism::Page
  element :checkout_shipping, '[name="processAddress"]'
  element :open_terms, 'a[class="iframe"]'
  element :close_terms, 'a[title~="Close"]'
  element :checkbox_terms, '#uniform-cgv'
  element :checkout_payment, '[name="processCarrier"]'

  def confirm_shipping
    checkout_shipping.click
    open_terms.click
    close_terms.click
    checkbox_terms.click
    checkout_payment.click
  end
end
