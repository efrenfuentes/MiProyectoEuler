require 'rake'

namespace :solucion do
  
  desc "Crea una nueva solucion"
  task :nueva do
    directorio_solucion = File.join("problema#{ENV['numero']}")
    directorio_test = File.join(directorio_solucion,"test")
    directorio_templates = File.join("templates")
    if File.exist?(directorio_solucion)
      puts "La solucion ya existe"
    else
      puts "Creando la solucion #{ENV['numero']}..."
      mkdir_p directorio_test
      
      cp "#{directorio_templates}/README.rdoc", "#{directorio_solucion}/README.rdoc"
      cp "#{directorio_templates}/solucion.rb", "#{directorio_solucion}/solucion.rb"
      cp "#{directorio_templates}/test.rb", "#{directorio_test}/test.rb"
    end
  end

  desc "Ejecuta una solucion"
  task :ejecutar do
    solucion = "problema#{ENV['numero']}/solucion.rb"
    if File.exist?(solucion)
      sh "ruby #{solucion}"
    else
      puts "La solucion no existen"
    end
  end

  desc "Ejecuta el test de una solucion"
  task :test do
    test = "problema#{ENV['numero']}/test/test.rb"
    if File.exist?(test)
      sh "ruby #{test}"
    else
      puts "La solucion y/o el test no existen"
    end
  end
  
end


