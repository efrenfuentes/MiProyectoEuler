class Solucion

  # Buscar los multiplos de base que sean menores al limite
  def multiplos(base, limite)
    Array.new(limite) { |i| (i + 1) * base if (i + 1) * base < limite }.compact
  end

  # Calcular la solucion
  def calcular(limite)
    
    # Buscando los multiplos de 3
    multiplos3 = multiplos(3, limite)
    
    # Buscando los multiplos de 5
    multiplos5 = multiplos(5, limite)
    
    # Uniendo los dos grupos y eliminando los repetidos
    todos = multiplos3.concat(multiplos5).uniq
    
    # Sumarlos todos
    suma = 0
    todos.each do |numero|
      suma += numero
    end
    
    suma
  end
end

# Usando la clase para buscar la solución
solucion = Solucion.new
puts "Respuesta: #{solucion.calcular(1000)}"
