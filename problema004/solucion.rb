class Solucion
  
  # Verificar si el numero enviado es capicua (palindromo)
  def capicua?(numero)
    numero.to_s == numero.to_s.reverse
  end
  
  # Busca el primero numero de tantos digitos
  def primero(digitos)
    10 ** (digitos - 1)
  end
  
  # Calcular el rango de numeros de tantos digitos
  def rango(digitos)
    (primero(digitos)..(primero(digitos + 1) - 1))
  end
  
  # Calcular la solucion
  def calcular(digitos)
    rango = rango(digitos)
    mayor = 0
    
    rango.each do |numero1|
      rango.each do |numero2|
        producto = numero1 * numero2
        mayor = producto if capicua?(producto) and producto > mayor
      end
    end
    
    mayor
  end
end

# Usando la clase para buscar la solución
solucion = Solucion.new
inicio = Time.new
puts "Respuesta: #{solucion.calcular(3)}"
fin = Time.new
puts "Tiempo empleado #{fin - inicio}"
