# Importamos las librerias necesarias
require '../Capabilities.rb'

# Iniciamos el driver de Appium añadiendole el Servidor y las Capabilities anteriores.
  $driver = Appium::Driver.new({'caps' => caps, 'appium_lib' => url}, true).start_driver

class Login
  def self.login(user, pass)

    # Indicamos que espere a que aparezca las ventanas de informacion y las cerramos.
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { $driver.find_element(:id, "com.Intelinova.TgApp:id/iv_closeView").displayed? }

    $driver.find_element(:id, "com.Intelinova.TgApp:id/iv_closeView").click

    # Añadimos el usuario y la clave en los campos correspondientes.
    $driver.find_element(:id, "com.Intelinova.TgApp:id/et_email").send_keys user
    $driver.find_element(:id, "com.Intelinova.TgApp:id/et_password").send_keys pass
    $driver.hide_keyboard
    
  end
end