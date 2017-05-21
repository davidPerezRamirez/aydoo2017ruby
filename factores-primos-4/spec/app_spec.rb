require_relative 'spec_helper.rb'

describe 'APP' do

	it "llamada a get/primos deberia ser ok" do
	    get "/primos"
	    expect(last_response.status).to eq 200
	end


end