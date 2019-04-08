# Importamos las librerias necesarias
require 'rubygems'
require 'appium_lib'

# Añadimos las Capabilities necesarias para emular la App en el emulador.
def caps
  caps = {
    "platformName" => "Android",
    "platformVersion" => "6.0.1",
    "deviceName" => "Android Emulator",
    "automationName" => "AutomationName.Espresso",
    "app" => "C:\\Users\\josel\\Desktop\\app-orginal-release.apk"
  }
end

# Añadimos la ruta del servidor.
def url
  opts = {
    :server_url => "http://localhost:4723/wd/hub"
  }
end