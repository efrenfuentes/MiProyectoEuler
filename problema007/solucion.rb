class Solucion
  
  # Identificar si el numero es divisible entre todo el rango
  def primo?(numero, rango)
    primo = false
    
    rango.each { |n| primo ||= ((numero % n) == 0) }

    !primo
  end
  
  # Buscar el siguiente numero primero
  def siguiente_primo(primos)
    return 2 if primos.size == 0
    
    es_primo = false
    primo = primos.last
    
    while !es_primo
      primo += 1
      es_primo = primo?(primo, primos)
    end
    
    primo
    
  end
  
  # Calcular la solucion
  def calcular(numero)
    primos = []
    
    numero.times do
      primos << siguiente_primo(primos)
    end
    
    primos.last
  end
end

# Usando la clase para buscar la solución
solucion = Solucion.new
puts "Respuesta: #{solucion.calcular(10001)}"
