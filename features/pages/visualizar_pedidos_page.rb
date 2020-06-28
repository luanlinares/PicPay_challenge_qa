# frozen_string_literal: true

class MeusPedidos < SitePrism::Page
  set_url '?controller=authentication&back=my-account'

  element :email, '#email'
  element :pass, '#passwd'
  element :btn_signin, '#SubmitLogin'

  element :link_orders, 'a[title="Orders"]'
  element :order_list, 'order-list'
  element :btn_back, '.icon-chevron-left'

  def login
    email.set 'luanlnrs@gmail.com'
    pass.set '123456'
    btn_signin.click
  end

  def access_orders_page
    link_orders.click
  end

  def orders_page_validate
    page.has_title?('Order history - My Store')
    page.has_table?('order_list')
    page.has_selector?('btn_back')
  end
end
