require 'sinatra'

get '/hola' do
	'hola mundo'
end

post '/pohola' do
	"hola: #{params['nombre']}"	
end