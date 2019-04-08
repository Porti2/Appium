# Importamos las librerias o scripts necesariass
require '../Login.rb'

puts "** Test 1: Login Válido **\n"
Login.login('MrRobot','1234abcd')

# Realizamos un 'Click' en el boton para iniciar la sesión.
$driver.find_element(:id, "com.Intelinova.TgApp:id/btn_login_users").click

# Indicamos que espere a que aparezca el centro (Gimnasio) y lo seleccionamos.
wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { $driver.find_element(:id, "com.Intelinova.TgApp:id/container_info").displayed? }

$driver.find_element(:id, "com.Intelinova.TgApp:id/container_info").click
puts "\t"+Time.now.strftime("%d/%m/%Y %H:%M:%S")+" --> Inicia sesión correctamente."

# Indicamos que espere a que aparezca las ventanas de informacion y las cerramos.
wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { $driver.find_element(:id, "com.Intelinova.TgApp:id/iv_closeView").displayed? }

$driver.find_element(:id, "com.Intelinova.TgApp:id/iv_closeView").click

# Indicamos que si existe un titulo en la Toolbar es que ha iniciado sesion correctamente y damos por finalizado correctamente el Test.
# Si este titulo no existiera dariamos como NO finalizado el Test.
if ($driver.find_element(:id, "com.Intelinova.TgApp:id/toolbar_title").displayed?)
  puts "\t"+Time.now.strftime("%d/%m/%Y %H:%M:%S")+" --> Aparece la pantalla principal. Test finalizado con exito."
else
  puts "\t"+ Time.now.strftime("%d/%m/%Y %H:%M:%S")+" --> ¡¡Error!! El test NO ha finalizado correctamente."
end
