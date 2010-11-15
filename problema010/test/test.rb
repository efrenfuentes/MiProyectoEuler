require 'test/unit'
require_relative '../solucion'

class TestSolucion < Test::Unit::TestCase
  # Preparando el test
  def setup
    @solucion = Solucion.new
  end
  
  # Verificando el ejemplo
  def test_ejemplo
    assert_equal(17, @solucion.calcular(10), "No ha funcionado el test")
  end
end
