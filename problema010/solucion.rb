require_relative '../libs/Primos'

class Solucion
  
  # Calcular la solucion
  def calcular(limite)
    suma = 0
    
    Primos.eratosthenes(limite).each do |numero|
      suma += numero
    end
    
    suma
  end
end

# Usando la clase para buscar la solución
solucion = Solucion.new
inicio = Time.new
puts "Respuesta: #{solucion.calcular(2000000)}"
fin = Time.new
puts "Tiempo empleado #{fin - inicio}"