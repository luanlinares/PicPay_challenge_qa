# frozen_string_literal: true

# Classe auxiliar para testes de pagamento

class Pagamento < SitePrism::Page
  element :pay_by_bank_wire, 'a[class="bankwire"]'
  element :pay_by_check, 'a[class="cheque"]'
  element :btn_orders_list, 'a[title="Back to orders"]'

  def payment_check
    page.has_table?('cart_summary')
    pay_by_check.click
    page.has_text?('You have chosen to pay by check. Here is a short summary of your order:')
    click_button(class: 'button btn btn-default button-medium')
  end

  def validate_order
    page.has_title?('Order confirmation - My Store')
    page.has_text?('YoYour order on My Store is complete.')
    btn_orders_list.click
  end
end
