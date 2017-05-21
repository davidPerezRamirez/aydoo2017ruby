require 'sinatra'
require_relative './model/factorizador.rb'
require_relative './model/impresora.rb'
require_relative './model/codigoRespuesta.rb'

set :factorizador, Factorizador.new
set :impresora, Impresora.new

def validarCampoIngresado(numero) 
	if !(/\D/ !~ numero)
		halt_400_Bad_Request("El valor ingresado no es un numero entero positivo")
	end
end

def obtenerFactoresPrimos(numero)
	validarCampoIngresado(numero)
	settings.factorizador.calcularFactoresPrimos(numero.to_i)	
end

get '/primos' do
	numero =  params[:x]
 
	factores = obtenerFactoresPrimos(numero)
	settings.impresora.imprimirArrayDescendente(factores)	
end

post '/primos' do
	numero =  params[:x]

	factores = obtenerFactoresPrimos(numero)	
	settings.impresora.imprimirArrayAscendente(factores)
end