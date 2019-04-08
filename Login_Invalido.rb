# Importamos las librerias necesarias
require '../Login.rb'
require '../Obtener_Toast.rb'

puts "** Test 2: Login Inválido **\n"

Login.login('MrRobot','1234abc')
# Realizamos un 'Click' en el boton para iniciar la sesión.
$driver.find_element(:id, "com.Intelinova.TgApp:id/btn_login_users").click
sleep(1);

texto = Obtener_Toast.ORC(Obtener_Toast.image($driver));

if(texto.include? "Login incorrecto, inténtelo de nuevo.")
  puts "\t"+Time.now.strftime("%d/%m/%Y %H:%M:%S")+" --> Login Inválido. Test finalizado con exito."
else
  puts "Hubo algún Error!!"
end
