require 'sinatra/base'

def halt_400_Bad_Request(message)
	halt 400, "400 Bad Request: #{message}"
end
