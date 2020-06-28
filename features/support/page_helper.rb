# frozen_string_literal: true

# Modulos para chamar as classes instanciadas
module Pages
  def pedidos_page
    @pedidos_page ||= MeusPedidos.new
  end

  def compras_page
    @compras_page ||= Compras.new
  end

  def cadastro_page
    @cadastro_page ||= Cadastro.new
  end

  def entrega_page
    @entrega_page ||= Entrega.new
  end

  def pagamento_page
    @pagamento_page ||= Pagamento.new
  end
end
