require 'test/unit'
require_relative '../solucion'

class TestSolucion < Test::Unit::TestCase
  # Preparando el test
  def setup
    @solucion = Solucion.new
  end
  
  # Verificando la identificacion de capicua
  def test_capicua
    # Estos son capicuas
    assert(@solucion.capicua?(9009))
    assert(@solucion.capicua?(1551))
    
    # Estos no son capicuas
    assert(!@solucion.capicua?(1234))
    assert(!@solucion.capicua?(4321))
  end
  
  # Verificando la busqueda del primer numero de tantos digitos
  def test_primero
    assert_equal(1, @solucion.primero(1))
    assert_equal(10, @solucion.primero(2))
    assert_equal(100, @solucion.primero(3))
  end
  
  # Verificando los rangos de numeros de tantos digitos
  def test_rango
    assert_equal(1..9, @solucion.rango(1))
    assert_equal(10..99, @solucion.rango(2))
    assert_equal(100..999, @solucion.rango(3))
  end
  
  # Verificando el ejemplo
  def test_ejemplo
    # Debe reemplazar el 0 por el valor que espera conseguir
    assert_equal(9009, @solucion.calcular(2), "No ha funcionado el test")
  end
end
