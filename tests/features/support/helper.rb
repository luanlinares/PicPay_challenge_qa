# frozen_string_literal: false

require 'fileutils'

# modulo com um metodo para tirar um print do resultado do teste.
module Helper
  def tirar_print(nome_arquivo, resultado)
    diretorio = "results/screenshots/test_#{resultado}"
    foto = "#{diretorio}/#{nome_arquivo}.png"
    page.save_screenshot(foto)
  end
end
