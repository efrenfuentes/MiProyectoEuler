require 'test/unit'
require_relative '../solucion'

class TestSolucion < Test::Unit::TestCase
  # Preparando el test
  def setup
    @solucion = Solucion.new
  end

  # Verificando el ejemplo
  def test_ejemplo
    # Debe reemplazar el 0 por el valor que espera conseguir
    assert_equal(0, @solucion.calcular(), "No ha funcionado el test.")
  end
  
  # Imprimiendo la solución
  def teardown
    puts "Respuesta: #{@solucion.calcular()}"
  end
end
