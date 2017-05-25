require 'sinatra'
require_relative './model/factorizador.rb'
require_relative './model/impresora.rb'

set :factorizador, Factorizador.new
set :impresora, Impresora.new

get '/primos' do
	numero =  params[:x]
 
	factores = settings.factorizador.obtenerFactoresPrimos(numero)
	settings.impresora.imprimirArrayDescendente(factores)	
end

post '/primos' do
	numero =  params[:x]

	factores = settings.factorizador.obtenerFactoresPrimos(numero)	
	settings.impresora.imprimirArrayAscendente(factores)
end