# frozen_string_literal: true

# Classe auxiliar para testes de compras de produtos
class Compras < SitePrism::Page
  set_url '/'
  element :product_blouse, 'li:nth-child(2) > div > div.left-block > div > a.product_img_link'
  element :add_blouse, 'a.button.ajax_add_to_cart_button.btn.btn-default'
  element :btn_continue_shopping, 'div.button-container > span'
  element :search, '#search_query_top'
  element :btn_search, '[name="submit_search"]'
  element :product_dress, '.first-in-line > .product-container > .left-block > .product-image-container > .product_img_link > .replace-2x'
  element :btn_more, 'a[title="View"]'
  element :select_color, '#color_15'
  element :add_product, '#add_to_cart'
  element :tshirt_category, 'a[title="T-shirts"]'
  element :product_tshirt, '.product_img_link > .replace-2x'
  element :quantly, '#quantity_wanted'
  element :close_window, '.cross'
  element :view_cart, 'a[title="View my shopping cart"]'
  element :btn_checkout_cart, 'a[title="Check out"]'
  element :btn_checkout_form, 'a[title="Proceed to checkout"]'

  def add_from_home_page
    product_blouse.hover
    add_blouse.click
    page.has_text?('Product successfully added to your shopping cart')
    btn_continue_shopping.click
  end

  def add_from_search
    search.set('Printed Chiffon Dress')
    btn_search.click
    product_dress.hover
    btn_more.click
    select_color.click
    find('option[value="3"]').select_option
    add_product.click
    btn_continue_shopping.click
  end

  def add_from_category
    tshirt_category.click
    product_tshirt.hover
    btn_more.click
    quantly.set('2')
    find('option[value="2"]').select_option
    add_product.click
  end

  def checkout
    close_window.click
    view_cart.hover
    btn_checkout_cart.click
    btn_checkout_form.click
  end
end
