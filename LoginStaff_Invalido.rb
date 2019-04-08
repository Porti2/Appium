# Importamos las librerias o scripts necesarias
require '../Login.rb'
require '../Obtener_Toast.rb'

puts "** Test 4: Login Satff Inválido **\n--------------------------"
Login.login('MrRobot','1234abcd')

# Realizamos un 'Click' en el boton para iniciar la sesión.
$driver.find_element(:id, "com.Intelinova.TgApp:id/btn_login_staff").click

sleep(1);

texto = Obtener_Toast.ORC(Obtener_Toast.image($driver));

if(texto.include? "Login incorrecto, inténtelo de nuevo.")
  puts "\t"+Time.now.strftime("%d/%m/%Y %H:%M:%S")+" --> Login Staff Inválido. Test finalizado con exito."
else
  puts "Hubo algún Error!!"
end