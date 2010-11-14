class Solucion
  
  # Leer el archivo de entrada
  def leer_archivo
    nombre_archivo = File.join(File.dirname(__FILE__), 'entrada.txt')
    
    numero = ""
    
    File.open(nombre_archivo, 'r') do |entrada|
      while linea = entrada.gets
        numero.concat(linea.chomp)
      end
    end  
    
    numero 
  end
  
  # Calcular la solucion
  def calcular()
    numero = leer_archivo
    mayor = 0
    actual = 0
    
    while actual < numero.size
      cadena = numero[actual..(actual + 4)]
      
      producto = 1
      
      cadena.each_char do |n|
        producto *= n.to_i
      end
      
      mayor = producto if producto > mayor
      
      actual += 1
    end
    
    mayor
  end
end

# Usando la clase para buscar la solución
solucion = Solucion.new
inicio = Time.new
puts "Respuesta: #{solucion.calcular()}"
fin = Time.new
puts "Tiempo empleado #{fin - inicio}"