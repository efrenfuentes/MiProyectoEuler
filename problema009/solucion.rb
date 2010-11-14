class Solucion
  
  # Calcular la solucion
  def calcular()
    rango_a = 1..998

    producto = 0
    
    rango_a.each do |a|
      rango_b = (a + 1)..999
      rango_b.each do |b|
        rango_c = (b + 1)..1000
        rango_c.each do |c|
          if (a + b + c) == 1000
            if (a**2 + b**2) == c**2
              producto = a * b * c
            end
          end
        end
      end
    end
    
    producto
    
  end
end

# Usando la clase para buscar la solución
solucion = Solucion.new
inicio = Time.new
puts "Respuesta: #{solucion.calcular()}"
fin = Time.new
puts "Tiempo empleado #{fin - inicio}"