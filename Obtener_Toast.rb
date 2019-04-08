class Obtener_Toast

  $nombre = Time.now.strftime("%d_%m_%Y_%H_%M_%S")
  def self.image(driver)

    begin
      targetFile = "../screenshots/"+$nombre+".png"
      $driver.save_screenshot(targetFile)

      puts "\t"+Time.now.strftime("%d/%m/%Y %H:%M:%S")+" --> Realiza Captura del Mensaje." 
    rescue
      puts "¡¡Error al realizar la captura!!"
    end
    return targetFile
  end

  def self.ORC(imagePath)
  # imagen = "./screenshots/"+$nombre+".png"
  ruta =  " ../screenshots/" + $nombre
  system('tesseract '+imagePath+ ruta)
  puts "\t"+Time.now.strftime("%d/%m/%Y %H:%M:%S")+" --> Analizando el Mensaje." 
    return File.read("../screenshots/"+$nombre+".txt")
  end

end