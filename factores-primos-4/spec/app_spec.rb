require_relative 'spec_helper.rb'

describe 'APP' do

	it "llamada a get/primos sin paramtros deberia ser ok" do
	    get "/primos"

	    expect(last_response.status).to eq 200
	end

	it "llamada a post/primos sin parametros deberia tener status 200" do
	    post "/primos"

	    expect(last_response.status).to eq 200
	end

	it "llamada a post/primos con parametro  12 deberia ser 2,2,3" do
	    post "/primos", params = {"x" => "12"}
	    
	    expect(last_response.body).to eq "2,2,3"
	end

	it "llamada a get/primos con parametro 12 deberia 3,2,2" do
	    get "/primos", params = {"x" => "12"}
	    
	    expect(last_response.body).to eq "3,2,2"
	end

	it "llamada a post/primos con parametro alfanumerico deberia tener status 400" do
	    post "/primos", params = {"x" => "12a"}
	    
	    expect(last_response.status).to eq 400
	end

	it "llamada a post/primos con parametro alfanumerico deberia tener status 400" do
	    get "/primos", params = {"x" => "12a"}
	    
	    expect(last_response.status).to eq 400
	end

end