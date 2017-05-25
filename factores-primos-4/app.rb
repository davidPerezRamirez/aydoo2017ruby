require 'sinatra'
require_relative './model/factorizador.rb'
require_relative './model/validador.rb'
require_relative './model/impresora.rb'

set :factorizador, Factorizador.new

get '/primos' do
	numero =  params[:x]

	validarNumeroEntero(numero)
	factores = settings.factorizador.calcularFactoresPrimos(numero.to_i)
	imprimirArrayDescendente(factores)
end

post '/primos' do
	numero =  params[:x]

	validarNumeroEntero(numero)
	factores = settings.factorizador.calcularFactoresPrimos(numero.to_i)	
	imprimirArrayAscendente(factores)
end