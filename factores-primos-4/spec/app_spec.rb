require_relative 'spec_helper.rb'

describe 'APP' do

	it "llamada a get/primos sin paramtros deberia ser ok" do
	    get "/primos"

	    expect(last_response.status).to eq 200
	end

	it "llamada a post/primos sin parametros deber ser ok" do
	    post "/primos"

	    expect(last_response.status).to eq 200
	end

	it "llamada a post/primos deber ser ok" do
	    post "/primos", params = {"x" => 12}
	    
	    expect(last_response.body).to eq "2,2,3"
	end

end