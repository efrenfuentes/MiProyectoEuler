require 'test/unit'
require_relative '../solucion'

class TestSolucion < Test::Unit::TestCase
  # Preparando el test
  def setup
    @solucion = Solucion.new
  end
  
  # Probando el generador de elementos
  def test_elemento_fibonacci
    # Primer elemento de la serie fibonacci es 1
    assert_equal(1, @solucion.elemento_fibonacci([]))
    
    # Segundo elemento de la serie fibonacci es 2
    assert_equal(2, @solucion.elemento_fibonacci([1]))
    
    # Los siguientes son la suma de los dos anteriores
    assert_equal(3, @solucion.elemento_fibonacci([1, 2]))
    assert_equal(5, @solucion.elemento_fibonacci([1, 2, 3]))
    assert_equal(8, @solucion.elemento_fibonacci([1, 2, 3, 5]))
  end
  
  # Verificando el generador de la serie fibonacci
  def test_fibonacci
    serie = @solucion.fibonacci(89)
    esperada = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    assert_equal(esperada, serie, "No ha funcionado la serie fibonacci")
  end

  # Verificando el ejemplo
  def test_ejemplo
    assert_equal(44, @solucion.calcular(89), "No ha funcionado el test")
  end
end
