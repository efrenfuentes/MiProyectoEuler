require 'test/unit'
require_relative '../solucion'

class TestSolucion < Test::Unit::TestCase
  # Preparando el test
  def setup
    @solucion = Solucion.new
  end
  
  # Verificando la identificacion de un numero_primo
  def test_primo
    assert(@solucion.primo?(3, [2]))
    assert(!@solucion.primo?(4, [2, 3]))
    assert(@solucion.primo?(5, [2, 3]))
    assert(!@solucion.primo?(6, [2, 3, 5]))
    assert(@solucion.primo?(7, [2, 3, 5]))
    assert(!@solucion.primo?(8, [2, 3, 5, 7]))
    assert(!@solucion.primo?(9, [2, 3, 5, 7]))
    assert(!@solucion.primo?(10, [2, 3, 5, 7]))
    assert(@solucion.primo?(11, [2, 3, 5, 7]))
  end
  
  # Verificando el generador de numeros primos
  def test_siguiente_primo 
    assert_equal(2, @solucion.siguiente_primo([]))
    assert_equal(3, @solucion.siguiente_primo([2]))
    assert_equal(5, @solucion.siguiente_primo([2, 3]))
    assert_equal(7, @solucion.siguiente_primo([2, 3, 5]))
    assert_equal(11, @solucion.siguiente_primo([2, 3, 5, 7]))
    assert_equal(13, @solucion.siguiente_primo([2, 3, 5, 7, 11]))
  end

  # Verificando el ejemplo
  def test_ejemplo
    assert_equal(13, @solucion.calcular(6), "No ha funcionado el test")
  end
end
