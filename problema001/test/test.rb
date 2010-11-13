require 'test/unit'
require_relative '../solucion'

class TestSolucion < Test::Unit::TestCase
  # Preparando el test
  def setup
    @solucion = Solucion.new
  end

  # Verificando el ejemplo
  def test_ejemplo
    assert_equal(23, @solucion.calcular(10), "No ha funcionado el test")
  end
  
  # Imprimiendo la solución
  def teardown
    puts "Respuesta: #{@solucion.calcular(1000)}"
  end
end
