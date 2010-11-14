class Solucion
  
  # Calcular la solucion
  def calcular()
    0
  end
end

# Usando la clase para buscar la solución
solucion = Solucion.new
inicio = Time.new
puts "Respuesta: #{solucion.calcular()}"
fin = Time.new
puts "Tiempo empleado #{fin - inicio}"