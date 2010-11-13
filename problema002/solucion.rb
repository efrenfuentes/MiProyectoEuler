class Solucion
  
  def elemento_fibonacci(anteriores)
    ultimo = anteriores.size
    
    if (ultimo == 0)
      return 1
    end
    
    if (ultimo == 1)
      return 2
    end
      
    elemento = anteriores[ultimo - 2] + anteriores[ultimo - 1]
  end
  
  def fibonacci(maximo)
    serie = []
    
    terminar = false
    while !terminar
      elemento = elemento_fibonacci(serie)
      terminar = (elemento > maximo)
      if (!terminar)
        serie << elemento
      end
    end

    serie
  end
  
  # Calcular la solucion
  def calcular(maximo)
      secuencia = fibonacci(maximo)
      
      suma = 0
      secuencia.each {|elemento| suma += elemento if ((elemento % 2) == 0)}
    
      suma
  end
end

# Usando la clase para buscar la solución
solucion = Solucion.new
puts "Respuesta: #{solucion.calcular(4000000)}"
