# frozen_string_literal: true

# Classe auxiliar para testes de cadastro e validacao de endereco
class Cadastro < SitePrism::Page
  element :email, '#email_create'
  element :btn_create_account, '#SubmitCreate'
  element :gender, '#id_gender2'
  element :first_name, '#customer_firstname'
  element :last_name, '#customer_lastname'
  element :password, '#passwd'
  element :newsletter, '#newsletter'
  element :offers, '#optin'
  element :address_fname, '#firstname'
  element :address_lname, '#lastname'
  element :address, '#address1'
  element :complement, '#address2'
  element :city, '#city'
  element :state, '#id_state'
  element :zipcode, '#postcode'
  element :mobile_phone, '#phone_mobile'
  element :btn_register, '#submitAccount'

  def register
    email.set Faker::Internet.free_email
    btn_create_account.click
    gender.click
    first_name.set Faker::Name.female_first_name
    last_name.set Faker::Name.last_name
    password.set Faker::Internet.password
    address_fname.set Faker::Name.female_first_name
    address_lname.set Faker::Name.last_name
    address.set Faker::Address.street_address
    complement.set Faker::Address.secondary_address
    city.set Faker::Address.city
    find('option[value="32"]').select_option
    zipcode.set Faker::Number.number(digits: 5)
    mobile_phone.set Faker::PhoneNumber.cell_phone
    btn_register.click
  end

  def validate_register
    page.has_selector?('#address_delivery')
    page.has_selector?('a[title="Add"]')
  end
end
