require 'sinatra/base'

def halt_400_Bad_Request(message)
	halt 400, "400 Bad Request: #{message}"
end

def validarNumeroEntero(numero) 
  if !(/\D/ !~ numero)
	halt_400_Bad_Request("El valor ingresado no es un numero entero positivo")
  end
end