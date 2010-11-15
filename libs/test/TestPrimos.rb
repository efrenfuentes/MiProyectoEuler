require 'test/unit'
require_relative '../Primos'

class TestPrimos < Test::Unit::TestCase
  
  # Verificando el metodo divisible
  def test_divisible
    assert(Primos.divisible?(10, 2), "10 es divisible entre 2")
    assert(!Primos.divisible?(10, 3), "10 no es divisible entre 3")
  end
  
  # Verificando el metodo primo
  def test_primo
    assert(Primos.primo?(11), "11 es numero primo")
    assert(Primos.primo?(3), "3 es numero primo")
    assert(Primos.primo?(13), "13 es numero primo")
    assert(!Primos.primo?(4), "4 no es numero primo")
  end
  
  def test_secuencia
    assert_equal([2, 3, 5, 7], Primos.secuencia(10))
    assert_equal([2, 3, 5, 7, 11, 13], Primos.secuencia(15))
  end
end
