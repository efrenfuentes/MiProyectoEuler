require 'test/unit'
require_relative '../solucion'

class TestSolucion < Test::Unit::TestCase
  # Preparando el test
  def setup
    @solucion = Solucion.new
  end
  
  # Verificando la identificacion de un numero divisible entre un rango
  def test_divisible
    assert(@solucion.divisible?(2520, 1..10))
  end

  # Verificando el ejemplo
  def test_ejemplo
   assert_equal(2520, @solucion.calcular(10), "No ha funcionado el test")
  end
end
