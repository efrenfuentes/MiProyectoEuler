class Solucion
  
  # Calcular la solucion
  def calcular(numero)
    rango = 1..numero
    
    suma = 0
    suma_cuadrados = 0
    
    rango.each do |n|
      suma += n
      suma_cuadrados += n ** 2
    end
    
    resta = suma ** 2 - suma_cuadrados
  end
end

# Usando la clase para buscar la solución
solucion = Solucion.new
inicio = Time.new
puts "Respuesta: #{solucion.calcular(100)}"
fin = Time.new
puts "Tiempo empleado #{fin - inicio}"
