require 'sinatra'

get '/hola' do
	nombre =  params[:nombre]
	"hola #{nombre}"
end

post '/hola' do
	"hola #{params['nombre']}"	
end