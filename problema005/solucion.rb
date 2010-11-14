class Solucion
  
  # Identificar si el numero es divisible entre todo el rango
  def divisible?(numero, rango)
    divisible = true
    
    rango.each { |n| divisible &= ((numero % n) == 0) }
    
    divisible
  end
  
  # Calcular la solucion
  def calcular(numero)
    veces = 1
    actual = numero
    
    until divisible?(actual, 1..numero)
      veces += 1
      actual = numero * veces
    end
    
    actual
  end
end

# Usando la clase para buscar la solución
solucion = Solucion.new
inicio = Time.new
puts "Respuesta: #{solucion.calcular(20)}"
fin = Time.new
puts "Tiempo empleado #{fin - inicio}"
