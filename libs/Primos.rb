class Primos
  
  # Ruby tiene una clase Prime, pero no creo que sea la idea
  # utilizarla para el proyecto Euler
  
  # Validar si un numero es divisible entre otro
  def self.divisible?(numerador, denominador)
    return (numerador % denominador) == 0
  end
  
  # Validar si un numero es primo o no
  def self.primo?(numero)
    primo = true
    
    return primo if (numero == 2) or (numero == 3)
    return !primo if divisible?(numero, 2)
    
    actual = 3
    while primo and (actual < numero)
      primo &&= !divisible?(numero, actual)
      actual += 2
    end
    
    primo
  end
  
  # Validar si un numero es primo o no
  def self.primo_base?(numero, anteriores)
    primo = true
    
    return primo if (numero == 2) or (numero == 3)
    return !primo if divisible?(numero, 2)
    
    anteriores.each do |actual|
      primo &&= !divisible?(numero, actual)
      break unless primo
    end
    
    primo
  end
  
  # Buscar una secuencia de numeros primos menores o iguales a un limite
  # Este funciona pero para numeros muy grandes es demasiado lento
  def self.secuencia(limite)
    primos = [2]
    
    actual = 3
    
    while actual < limite do
      if primo_base?(actual, primos)
        primos << actual
      end
      actual = actual + 2
    end
    
    primos
  end
  
  # Sieve of Eratosthenes
  # Este es el mas rapido que pude encontrar
  def self.eratosthenes(maximo)
    primos=(2..maximo).to_a
    (2..Math::sqrt(maximo)).each do |i|
       primos.delete_if { |a| a % i == 0 && a != i }
     end
     primos
  end
end