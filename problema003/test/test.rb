require 'test/unit'
require_relative '../solucion'

class TestSolucion < Test::Unit::TestCase
  # Preparando el test
  def setup
    @solucion = Solucion.new
  end
  
  # Verificando la busqueda de los factores primos
  def test_factores_primos
    esperado = [5, 7, 13, 29]
    assert_equal(esperado, @solucion.factores_primos(13195), "No ha funcionado el test")
  end

  # Verificando el ejemplo
  def test_ejemplo
    assert_equal(29, @solucion.calcular(13195), "No ha funcionado el test")
  end
  
  # Imprimiendo la solución
  def teardown
    puts "Respuesta: #{@solucion.calcular(600851475143)}"
  end
end
