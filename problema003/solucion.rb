class Solucion
  
  # Calcular los factores primos de un numero
  def factores_primos(numero)
    factores = []
    
    actual = numero
    factor = 2
    while actual > 1
      if (actual % factor == 0) and !(factores.include? factor)
        factores << factor
        while actual % factor == 0
          actual = actual / factor
        end
      end
      factor += 1
    end
    
    factores
  end
  
  # Calcular la solucion
  def calcular(numero)
    factores = factores_primos(numero)
    
    maximo = factores[0]
    
    factores.each {|factor| maximo = factor if factor > maximo }
    
    maximo
  end
end

# Usando la clase para buscar la solución
solucion = Solucion.new
puts "Respuesta: #{solucion.calcular(600851475143)}"
